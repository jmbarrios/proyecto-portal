import portal_project.db

def main():
    q_top10_observed_species = portal_project.db.load_sql(
        "occurrences/get_top10_observed_species"
    )

    db = portal_project.db.Database("00-data/portal-data.db")

    data = db.query(q_top10_observed_species)

    print(data)
    print('='*80)

    q_get_plot_data = portal_project.db.load_sql("occurrences/get_plot_data")

    data_plot_12 = db.query(q_get_plot_data, params={"plot":12})

    print(data_plot_12.head())


if __name__ == "__main__":
    main()