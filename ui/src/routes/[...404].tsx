import { A, Title } from "solid-start";
import { HttpStatusCode } from "solid-start/server";

export default function NotFound() {
  return (
    <main>
      <Title>Not Found</Title>
      <HttpStatusCode code={404} />
      <h1>Page Not Found</h1>
      <h2>
        <A href="/">/</A>
        Is the only page available
      </h2>
    </main>
  );
}
