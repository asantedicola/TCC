import { aggregate, createDirectus, readItems, rest } from "@directus/sdk";

const client = createDirectus(process.env.NODE_ENV === "development" ?  "http://localhost:3000" : "http://cms.tcc.local").with(rest());

export default client;