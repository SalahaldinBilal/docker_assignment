import { For, onMount } from "solid-js";
import { createStore, reconcile } from "solid-js/store";
import { Title } from "solid-start";
import NewsArticleComponent from "~/components/NewsArticleComponent/NewsArticleComponent";
import { NewsArticle } from "~/types";

export default function Home() {
  const [articles, setArticles] = createStore<NewsArticle[]>([]);

  const fetchArticles = async () => {
    console.log(`${import.meta.env.API_URL}/getUrgentNews`);
    const response = await fetch(`${import.meta.env.API_URL}/getUrgentNews`);
    const data = await response.json() as Array<NewsArticle & { created_at: string }>;

    setArticles(reconcile(data.map((e: NewsArticle) => {
      e.created_at = new Date(e.created_at);
      return e;
    }), { key: 'id', merge: true }));
  }

  onMount(() => {
    fetchArticles();
  })

  return (
    <main>
      <Title>News List</Title>
      <h1>Articles</h1>
      <div class="list-container">
        <For each={articles}>{article => <NewsArticleComponent article={article} />}</For>
      </div>
    </main>
  );
}
