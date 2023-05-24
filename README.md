## Requirements
- Postgres
- Ruby 3.0.2

To install the project you need to prepare database & create migrations

```bash
rails db:create && rails db:migrate
```

After it, Spina provides an in-built task to do some basic configuration, please run

```bash
rails spina:first_deploy

# Site name      :  GilbertMarcel
# Active theme   :  default
```

And using admin credentials from the previous step sign in via this URL [http://localhost:3000/admin/login](http://localhost:3000/admin/login)

## How to edit
⚠️⚠️⚠️ The root page will not work without the fulfillment of pages in admin area

- Contact information and site name are editable via general settings
[http://localhost:3000/admin/account/edit](http://localhost:3000/admin/account/edit)

- The top section of is editable via the `Art Preview`
[http://localhost:3000/admin/pages](http://localhost:3000/admin/pages)

<img width="735" alt="Screenshot 2023-05-24 at 5 09 39 PM" src="https://github.com/bolom/gilbertmarcel/assets/16134404/5893aa6d-5c73-40e6-b684-82ddafa37a6e">

<img width="735" alt="Screenshot 2023-05-24 at 5 06 13 PM" src="https://github.com/bolom/gilbertmarcel/assets/16134404/004a4de0-b222-48ff-b540-1247fe872b65">

- Each item in the gallery is a separate page in the admin area, click `New Page -> Art Gallery`

<img width="735" alt="Screenshot 2023-05-24 at 5 16 14 PM" src="https://github.com/bolom/gilbertmarcel/assets/16134404/767a1c5a-2216-49f2-b21a-c08794f5eef7">

- The item below the gallery is `Art Big Picture`

- Journal items as same as the gallery are separate pages, `New Page -> Journal`
