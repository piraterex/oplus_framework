.class Landroid/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 1823
    iput-object p1, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 1833
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 1825
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 1829
    iget-object v0, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    invoke-static {v0, p1}, Landroid/widget/SearchView;->-$$Nest$monTextChanged(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1830
    return-void
.end method
