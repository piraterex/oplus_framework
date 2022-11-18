.class Landroid/widget/TabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final greylist-max-o mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabHost;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 724
    iput-object p1, p0, Landroid/widget/TabHost$ViewIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Landroid/widget/TabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 726
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabHost;Landroid/view/View;Landroid/widget/TabHost$ViewIndicatorStrategy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$ViewIndicatorStrategy;-><init>(Landroid/widget/TabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o createIndicatorView()Landroid/view/View;
    .locals 1

    .line 729
    iget-object v0, p0, Landroid/widget/TabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
