.class Landroid/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SearchView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SearchView;

    .line 1014
    iput-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1017
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1018
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monSearchClicked(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmCloseButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1020
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monCloseClicked(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmGoButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1022
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monSubmitQuery(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 1023
    :cond_2
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmVoiceButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1024
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monVoiceClicked(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 1025
    :cond_3
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1026
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$mforceSuggestionQuery(Landroid/widget/SearchView;)V

    .line 1028
    :cond_4
    :goto_0
    return-void
.end method
