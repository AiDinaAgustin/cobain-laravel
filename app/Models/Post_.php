<?php

namespace App\Models;

use Illuminate\Support\Collection;

class Post
{
      private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Ai Dina Agustin",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sint voluptatibus aperiam, odio facere praesentium a quos. Eveniet rerum molestias omnis debitis est quaerat libero eum perspiciatis natus, cupiditate soluta explicabo repellendus dolore cum quod fugiat porro iusto fuga maiores minima aperiam necessitatibus iure. Explicabo itaque maxime quasi id quod delectus amet, repudiandae architecto error, culpa asperiores natus voluptatum. Nesciunt amet odit debitis quasi ad, est totam obcaecati veniam dolor dolorem iusto atque impedit repellat fuga animi sit minima! Et, nobis!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Dindin",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur sint accusantium accusamus rem, similique assumenda? Eaque, fuga unde quo corrupti dignissimos totam illum deserunt architecto error enim consequuntur ut id ipsam voluptas velit fugiat assumenda suscipit, natus omnis nisi nulla eligendi. Neque, deserunt aperiam? Ad rem vero adipisci in voluptate fuga aperiam mollitia maiores deserunt unde quaerat consequuntur accusamus, alias asperiores harum cupiditate assumenda, sunt perspiciatis a dignissimos labore eos exercitationem. Quod dolore necessitatibus, commodi excepturi quam quaerat aspernatur sint doloremque. Non id fuga nostrum harum magni perferendis doloremque aspernatur sunt officiis dolores necessitatibus totam molestiae quaerat quae similique sequi, odit nobis illum! Odit, quo! Iure earum ex nesciunt sit, repellendus tempora beatae et. Quo perspiciatis officiis nesciunt obcaecati, iure rerum. Ullam tempore enim optio illo aspernatur debitis consectetur assumenda sapiente. Ab alias tempore iste rerum iusto, id nesciunt, adipisci earum minima quia magni molestias laboriosam aliquam laudantium velit temporibus."
        ],
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();
        
    return $posts->firstWhere("slug", $slug);
}
}