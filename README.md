Before Render  
===========================

## Introduction
  Add a hook like before_action to your controllers that gets executed between
when your action is completed and the template is rendered.  It can really
DRY up loading some data that is used for views (headers / layouts / etc).

Provided methods:

- before_render
- prepend\_before\_render
- skip\_before\_render
   
## Installation       
  
    gem 'before_render', '~> 0.2', github: 'ishumilova/before_render'
  
  Warning: Ruby 2+, Rails 4 and Rails 5 only. 
 
## Usage
  before_render / prepend\_before\_render / skip\_before\_render works as other filters. Options like :except and :only can be passed to filter.

    class PostsController < ApplicationController
      before_render :ping, :except => [:destroy]
  
      def index; end     
  
      def new; end
    
      def show; end
  
      def destroy; end                                                                          
              
      private
        def ping
          Rails.logger.info "Ping-Pong actions"
        end
    end       
       
  Method ping will be executed after your actions and before template is rendered.

## Author
Copyright (c) 2017 Irina Shumilova, released under the MIT license.
Plugin is heavily based on Nilesh Chaudhari before_render.
