#task_project

## Getting Started

Follow these steps to clone and run the project:

1. **Clone the repository**
    ```bash
    git clone <repository-url>
    cd task_project
    code .
    ```

2. **Install dependencies**
    ```bash
  flutter create .
  flutter pub get
   ```

3. **Run the project**
    ```bash
   #run project in android emulator

    ```

4. **Package uses**
     - carousel_slider: ^4.2.0 [uses for slider section]
     - flutter_svg: ^1.1.0 [uses for svg icons and images]
     - flutter gen  [ to get exact path of assets ]
5. **Project Structure**

    -lib
        - gen [ path of assets is here ]
        -src
           -component [ custom widgets  are here]
               
            
        -constants [all constants are here like colors , data list of all sections]
        - ui 
            -pages [ all pages are here ]
              -features [ all features are here ]
                -  category [ category section and its components ]
                             - widget [ custom card of category ]

                -person_with_ratting  [ person_with_ratting section and its components ]
                             - widget [ custom card of person_with_ratting ]
                
                -Search job [  search job section file ]
                - service_section [ service_section  and its components ]
                              - widget [ custom card of service_section ]
                - slider_section [ slider_section and its components ]
                              - widget [ custom card of slider_section ]
                