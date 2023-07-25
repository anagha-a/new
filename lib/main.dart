import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ZEDZAT",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        'Govindapuram,Kozhikode,Kerala,India',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
                items: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.network(
                        'data:image/jpeg;base64,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'),
                  ),
                  Container(
                      child: Image.network(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSExITFhUXFRYVFRUVFxUVFRUVFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy4dHyIrLi0tLS8tLS0tLS0tLSstKy0tLS0tLS0rLSstKy0rLSstLS0tLS0tLSstLS0tLS0tLf/AABEIAKMBNAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwABBAUGB//EAEEQAAIBAgEIBgcHAgUFAAAAAAABAgMRIQQFEjFBUWGRcYGhscHRBhMiUnLh8CMyQmKCkrIzohQ0U8LxFmNzk+L/xAAZAQEBAAMBAAAAAAAAAAAAAAAAAQIDBAX/xAAkEQEAAgEDAwUBAQAAAAAAAAAAAQIRAxITBCExMkFRYXEiFP/aAAwDAQACEQMRAD8A+rNApj9EVFBEgHYtQCcQEtC5MfNAzpYAZpICw5xYMkApLYA8A2iN6gBiwktjBlEIBUqTuLlE0OQqowFASQVRbioxdgFzAkx80AogBcgzRxI6dgFaVgG73eztGqGJc4IDN6wKKuF6tB08OQAywwFaQ1oDRAHC4WmliVolOQFuoBpIIrRAue8EJ6irEBpAMbYVNADNCtEY7laIC6lMzqmjc1vFeq3AY50cSGv1ZAPbTQsfOIoouKLkUiwAkiLUN0QGgEzFj5RFSiAqpsFNDpIDQAGKBbIsAWwJcGRdygAaKSsGkBIAHIDWG0AgCsRohQERQLZFJgVJA2GsCLvcAWiRjfFBWLUrRXxS7Ixt3mvVvNa5hnSu6cMWU13FXtgtdjPSypS1GXNWa5UXVbqympyvaV7J43eL1u9sNxkyKVpI16WrNpmJZ6mnFYiYegg9w3RbM+Tu6N0dR0NDLoPaM9WFUQKlt4kVcnYTIuo9fQXDjw7QKcblONgkypXAGJHHEKxVgKbIUygPa1WJbsahMolCm7lxDiUwCQLQOlsDSAFoSx0hMpALsWwrWFzeLaCM02DYYqbbuU8AoGDcJgJgFcCQSZTARKQGmPkhLjYAoktwAjcfGwCZJksNk0BogLlNlKQ3R2FSsAu73BxjeK+KXdAGTLi/Yfxd6Xkadf0S26XqZN9nqbPOZLJaWrG53Kktb3t91kcPJ449fic/Tz/Ut2v4h3aM9RtVYw0ErDYo7nI0SmQTLUTSAKb2FSbWq3WSTx3kbIIpX2bdYwGLI5AVyKbKuDcA0iC2yBXuJA6y5lQRUVPUKHVMRcoABANJlQiS4EYmSsO0dwnKJBAWuDKD2BxZawCkye/WZ5GiYqUAFyQEQ5gRQESI0WVIAJAyjclWWFi4MBejiMjBFNBJADJWBlwLkBPCze12XZj0YmNrRWMytazM4gcWBKfEw51yyGT0JV6jtFOytrb1uyPOZk9JXlOlKleah9+LtGUU395W1o0z1NPtujp7y9exeUT0adt7bXQklfn3HDnnlPnt6/IKWW6VO7bbszRr9RFq7atuloTE5lcqjcVfYtfTbzOXpuM7Pf34muE+5ckBltJN34YPl8zTo6m22ZbtXS31xDo5NWujZSlhsODQm1q6rh5JneEm0pO6unZYYcTt/wBNHJ/mu7k3ZY4mXKMqsm9iTfEGc7rCXPxOZk+VqUnTnhe8b8dj52Mo1q2idvljOlNZjd4MyGtOo7yb8uB2JJxtd613azn5DRUH7WFtb2YLWStnBTq3i/ZUdFc7t9fgctNTZOZdV6b4xDpJhJLezPSqaS6Hbp29zCT2HfE5jMOGYxOBvXiVJC2yXCHKK3sgjTIB76UCQgMbKuUCoEaQTnhYXpATRQuVkSpUxwFykBPWYMVHXdhtLaDcClEqYVyozQAqIqohrkKkwFTQGiG5CpzAu6QLKbKAGULlKIVynIAkDJkcgJyAkmKyudlTvb7stfxv5DqUcVd9W368jiZwrOUnuSwW72n5dpydRqVmNsOrQ05zukr06oeuyelSha6vJ7ndtuLPNehOa50qs6ltFyi6ajhinJN35I9TWo6UIY7PERm+DjOG20k+m+JwzM5dkRGHls6SlCbjJNNSevdibaGU/Z61909FnPJo1JPTgndvDw/ius856R5qlRb9VjFK7jussbcMNRLVSLN3rL6XVbmy8pevoOJkecFJPHcjpOtpX6+1khmNSvdfln2RbuYszLRkrLC46nlGjJNq6/Et8XhJdavzG5JkuhLRw2NNfii8YyXSjZDC0O5l9JR0dHVNL/6XK3M8tnR2qu2rA9PnCWFOO7Sa6LJePYeazlb10sN3cbtH1tOt6HRlJ1XTptuzSnPiklg+lmunkaxwxskunGXe4czPmWGlWf6YLqR3sqyZUY+su3JyWhHfUk1bqWjF9EGLx3grbzBVOFrpatJr9q0b9gc0UqVkldg472d9YxEQ4rTmZlUocAZT4IZd7RdVFYltdBAXfeQD6QWiiFAyAqB2KaAQ0DJjpoW4hC5MXca0KaCqlqKSL0iwBYqSHtCZgIqIU0aWhckApsjZbiU0AKIyIqTAW5B0aqUk3Z67LfZeYrRu0t7tzMCr3yh7oq0ehRd+1o5up1dsREe7o0NPdMzPs10Jty0nta75HLy7701uUVzTfedTJFa3Su9+RyK8ryq9Mf8AccLrhqnUSpxW368jLkH9RWxalt3PVyDymPsR6O5/NCsim1OLtr7LrzuYT5Z47NsP6mOOi22+MU5SfNrkZM4q838Pem34mltRUorGShPSd9smlj2GfL5e1J8H/GRsnwwh5L0iyFU4KrBa7KSXRgzNk2VvG/DxO7ndr1UE9Umovrizy9Sm6cpR3NW6Lmr3bYdKU8PrpPSZnkppU3rV/Vt7Hg9B8Hs49J5JVL2O/kt1intwfRZruLux3JjMYdPKKj03fZZW4Wb8UcPK6V69t7jyPQZ6leaqJYTjGXQ7WfajjNfbtvZj2P5G/SnF5/HPqRmkR9tvo5d1VbbV7E/kdjO1Rzym34aMedSaxfVGy/UzJ6HUFpp+6nJvp/57C6U9Jzqe/OUupu0exI6a1zav1Dntbtb7k+VQHS4i5oo6XOc5laQicg8AA0+JCRiQD6SyWC0S1EqEzeIMnYOcMRcgpemBNY3CsW4hAsS0PirC5u4C7EuFYjQUEmLkHIGSCAmKY2bEOIUMliNhqxQNiLABdRYgNhTYtgBezb92MnyizzmaKjc3L8snzvfwPQSV9Nb4TX9rfgedzcrab26LjytftPN6uf7j8eh0sfxLv5tleXXH+MmcrKHjU+NLsl5m7NEsevugznVnjV+O3Zc1Q2e7VVj7MeiXn4Cs2wtNY/dlbqep80amvs4fW8RmuGlUae1fNd5Md1z/ACbUSjCUnrnPsjK/hc52UO8v0/7ZGvOK0ZQhsjCUuvUu8yV4+11P+MvMtvhKuZnxfYJ7pQfLRODnxWlF+8l3fI9JnaF6Elw7oo8xnqeMFuXg/M14bCaD8D1+ZdFyp6SvHTWktV02k8UeOpp2d10fM9VmF3lBb5wXOSELPh9Lyr0co4YTtG9o3Tir4tWa34nm87ZsprZJX2rQT56J7/KPus8pnhYnrWpWI7Q8ut5y4WRVPUxcYRburNtq9rW2ITF2srWVrWV9mBtmsDn1dbx2kpGJS89mgFbBekDKRtaxTaKugEWukB0XxIIlYgV9TLvYlQTJlRVXeIqVNwVV3RmcgGoJxFJjAhU5YgRCmwGATZEwGVp7gLYplubKaACTAaLkUFU4ipyHsTJAKuBOQU9YpgJlUtJPjj0bTm5Tk2g5rY02nvvO6ZvrxFylenZ/eja3GN726jk6rT3RFo9nV02ptma/IchlZPi525JeJz5L+r/5H3NeBsoQsl8LfOpHyMDdvWfFfm5eZxR5djpyf2cOnxZWZv6l17vkLqS+zh0X5X8wc1TtU6n4F92M+AZ5l9rL4IrmzJlD9rqf8PmTKpXlJv3oJ9r8SZVL2l9a4xQssdoZc4P7J9a/tZ4r13ramlv1dB2vSbOqjT9XF+05X7zlZnipJPXv6TCfDOG2pSvG/wBbfkei9F43q0V/3aX8rvuOdOnaLOr6FPSyilGzwnHosrvDkWnmP0t6ZfXMqfss8vnU9Plf3TzGdT1r+Hk1cieo5tR+0zpT1HIry9pmFPLKwqkxbkDpXKbNrASqBKqI0sS5sA3MoUusgH2CtLAARNt7HzFNz93+5eRhy1ZccmzeLuZnvCcpP8D5xAek/wAMv7Ry1OOyMKU7WFSi9bUuwBtPeOWq8VjpTFzliA38X11CpJ60nz+Q5anFZp0sANhmc5e6+a8hcsolq0JLjeNu8ctU4rHuQxvA56qfllbhKITrLV7XYTlqvFY91AWZ9OO+XZ5BKontly+Q5anFY6c7A3AdnvI18X11DmqcVlVNZJLAGUHrtL66iva9180OapxWDKGBirRNcnJ/gn/b5inSe6XInNVY0rMqeu+7B7sU7P62nMyiabnbevH5nankj/Mc/Lcy6d2m4y963fv6zk1K0mc1l1ad7R2slVfZx4QYnN9T7Rpbpd/yMtTMmVtW/wARB2Vv6TvbqmZ/+nssTvHKKae37KTvf9Zp2y27qnVsojoyk2vvJ9tjhZ49Iby0KOMlbHYrJeKLr+gmUzftZWrblSsv5X7QqXoNUgv8xLqop+JlNJ+Ui8PKV83zmnLS9qWta8Nltx3vR3JHTTT3/K31xOrT9EauzKZf+qKfaOoejNaGqtN/ogY7bT2mWW+vwXlUfZZ1/QX/ADNL6/DIxVPR6s9dWX7IHQ9GMz1KOU0pSrNQi8XKMErJPBvZfV1mVKYtH6l7xtmH07KpYHl86yPTZT7Ubpp9DPLZ1yeWy3M9G/h59XKnPA5dXFs6FajJLFpdZ5nK84KE2r6SW2MlbuNUWivlnNd3hvlKxWkct5z4PmCs5bcTLlqx4rOuU2zlrON9WPWX/jZbmOWpxWdHHgQ5v+Pe4g5anHZ9rcXw7Cnfh2AaS999pV17/eam0Tvw7AJX+miNr3mJq1YrW5ftfgBcoN/8meeRwvfQjff7N+4N1oP8T5SQEqUH+N85+YUXqtyXZ5AuL4dgHq4rVUa65eLI5L/UfaRVuL4dhVnw7Cnb3yKP5gLs+HYUk/qwVnvQMul8hgC4v6sLdLh2olStFa5P9r8AfWweqfYyYC/8JG99BX6hnq+C7AZU4a9N/ul5ilJJ4Tl2+LJI0aL4dhMdy7BPrV777SvWL3iKc5vh2Aub3LsFOf5i18RDC/WPcuwHSe5dhJLj3guP1iBbk+ALkyrce8prj3kwoW3u7gXJ7u7zC0eLAcFvYwqnKW7u8ynJ7uxeZHT6RbhxZAxVNngiaUt/cJfWU7cQo5009cY/tiZqmRweuEP2x8h1vi5gumuPYXCMrzdT/wBOn+yAUsliti/aiSpvZpdgE5Nfgm/1IdgLoLhyRHQVtXYhM68lqoyf60vEkK03rpW/VfwLhMidHguSFugr6lyGzfATJkwuUVFblyIL019Mgwj6WVKKKIbWKkiTZCAIl0vmxDXTzZRCKJgshAAnEqxRCBiYRRDJA1JPexMm975kIYypS6yNEIRU0UVKKKIQDYvRIQxZKSIyEAFMliECKsVYhCiEcFuIQBbitwuS4IhCBUkDFlEIopAaRRAAkxFWT3ssgGWcmZ5Te8hAAZCEKj//2Q==')),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                )),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Container(
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'Product',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    'Product',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,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'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                      
                    ),
                    Text('Finance'),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHYAAAB/CAMAAAANdsbrAAAAllBMVEX///8AAAAREiS/v7/5+fnk5OQ6OjrLy8sODyLs7OwhISFCQkLV1dWqqqoAABr8/PyioqKPj4/d3d0AABZQUFAbGxvy8vIyMjKysrJLS0tiYmIHCB5ubm5paWkNDQ2JiYlZWVkYGSpUVV4/P0qXl5eAgIArKyseHy4nJzQwMDxhYWlFRU12d39wcHU5OUAAABAfICiCgopNYjSxAAADRklEQVRoge2Y6ZKiMBCARwSNGJBbLkURFQM44/u/3IZzdXQc7v2x/VXBTCzLrzp0ukM+PgAAAAAAAAAAAAAA+F9gWXY1thMHmzXPL11pMZrSmB4nf+Hl+QhBY0GbfGfrmkMGbWB5+eTM0TVJYYdwLqbu7AdngXXERq/KFSdttu+dOWvX7M2M5V/CfMSWuM5Kw3SbKAt4b97BqQg/ZVCdoM02QRtzr9HUvkC3GmY392vW1mV5nNfNMbzpR1nAH2uJuV6lKXodrdG71qo1yUbQIYGf2Zm1rBRWka2enEKzJkHNXWPe7oQ2S5fFwbq90xKUFs4CLJ/aSK1WcT6gSA3NWtX0lUDvUpy5oHaG2cLf4rCgzbKLNu24wfNm5tn5uLlZ8B20bJEaK+Wtmd+VLYdVVj1oOTpxZRBYet0idG1aOFecbJ3YXrTp9EnlI1Okp1V1n0PpYp/1pp2ki6L8cU66qyS2WfZUHOj5R71qKcuqBCyE486ybG9aOWW++lrf2izm0ryqXoFYLD9M/ABaWvY0ibt7/WCx9714D6JN2UlcGuvKwN6LQjKYlqLvbPuHdVxp9f61byi1Av1/M7rWyPIMj601s4E7trZI8Jadt61WKUbCuFqhGNnjaoNitBxLu860UjHS2mlZvak2T97y2dbenX/DbKotGqSXB9v6JEX4RfMIX7Wo9CBg1uHoCDfYprt3r5XBZNftBKVuwNZjLex+eGLW2Cq7bQvwO5RXvbVie78x7xdWETbLF+vppB2nAx+1stzclG1rtj6dTuv1UnODKR7vdJfu4Cjj6QAAAAAAAAAAAAAAqJj+Ez5qHjj1zAfzCEIo/8sgZkCoFp0d5FDSmxru946KROcsXgbWOv6B+IeIxFdySKREuHphksgbsm//q6KYxuGoIsrDoUPxU6Son6oj5loUkoTE/sknUfx1lLybZSZfhuN0sBKfxhFFMbkcfD88RH4UkRu1kOSWRETMtIwYR8mBHAjxyTUObrF3k/3gpnbQ+iShkRA/prfEJzG9qNRPkij2Ki06i+HlfNmfL4i50uFFDUMmbG+lz01EiE4uIzIq46Bsps/0U5U50yudxiyTUZrAKEvi7GJQmdD9ge7uhXZ8/gAVykgugoCSGgAAAABJRU5ErkJggg=='),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text('Education'),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,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'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text('Insurance'),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,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'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text('Doctors'),
                  ],
                ),
              ],
            ),
                SizedBox(
              height: 15,
            ),
                Row(
                  children: [
                    Column(
                      children: [
                        PhysicalModel(
                          color: Colors.yellow,
                          shadowColor: Colors.blue,
                          elevation: 15.0,
                          shape: BoxShape.circle,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage('data:image/png;base64,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'),
                          ),
                        ),
                         SizedBox(
                          height: 10,
                        ),
                        Text('Beauty Salon'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,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'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text('Legal'),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,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'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text('Mechanics'),
                  ],
                ),
                Column(
                  children: [
                    PhysicalModel(
                      color: Colors.yellow,
                      shadowColor: Colors.blue,
                      elevation: 15.0,
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage('data:image/png;base64,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'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text('Electronics'),
                  ],
                ),

              ],
            
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book, color: Colors.black), label: 'Offers'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard, color: Colors.black),
                label: 'Rewards'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag, color: Colors.black),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                label: 'Profile'),
          ]),
    );
  }
}
