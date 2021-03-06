defmodule OfferHunters.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string
      add :profile_picture, :string
      add :name, :string
      add :admin, :boolean

      timestamps()
    end

    create unique_index(:users, :email)
  end
end
