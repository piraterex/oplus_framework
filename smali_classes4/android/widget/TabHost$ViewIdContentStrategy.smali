.class Landroid/widget/TabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final greylist-max-o mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabHost;I)V
    .locals 2
    .param p2, "viewId"    # I

    .line 740
    iput-object p1, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    invoke-static {p1}, Landroid/widget/TabHost;->-$$Nest$fgetmTabContent(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 742
    if-eqz p1, :cond_0

    .line 743
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 748
    return-void

    .line 745
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create tab content because could not find view with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabHost;ILandroid/widget/TabHost$ViewIdContentStrategy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$ViewIdContentStrategy;-><init>(Landroid/widget/TabHost;I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .locals 2

    .line 751
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o tabClosed()V
    .locals 2

    .line 756
    iget-object v0, p0, Landroid/widget/TabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    return-void
.end method
