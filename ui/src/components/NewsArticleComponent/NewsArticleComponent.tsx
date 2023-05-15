import styles from './NewsArticleComponent.module.scss';
import { NewsArticle } from "~/types";

export default function NewsArticleComponent(props: { article: NewsArticle }) {
  const stringifyDate = (date: Date) => {
    const stringDate = date.toString();
    const splitDateString = stringDate.split(" ");
    return splitDateString.slice(1, 5).join(" ");
  }

  return (
    <div class={styles.Container}>
      <h2>{props.article.title}</h2>
      <h4>{stringifyDate(props.article.created_at)}</h4>
      <span>{props.article.story}</span>
    </div>
  );
}
