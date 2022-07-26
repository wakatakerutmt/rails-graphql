import { gql } from "@apollo/client";

export default gql`
  mutation dddBook($id: ID!) {
    dddBook(input: { id: $id }) {
      id
    }
  }
`;
