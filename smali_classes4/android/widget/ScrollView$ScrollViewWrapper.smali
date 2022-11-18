.class Landroid/widget/ScrollView$ScrollViewWrapper;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/widget/IScrollViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollViewWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ScrollView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .line 2066
    iput-object p1, p0, Landroid/widget/ScrollView$ScrollViewWrapper;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView$ScrollViewWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/widget/IOplusScrollViewExt;
    .locals 1

    .line 2070
    iget-object v0, p0, Landroid/widget/ScrollView$ScrollViewWrapper;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-$$Nest$fgetmOplusScrollViewExt(Landroid/widget/ScrollView;)Landroid/widget/IOplusScrollViewExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOverScroller()Landroid/widget/OverScroller;
    .locals 1

    .line 2075
    iget-object v0, p0, Landroid/widget/ScrollView$ScrollViewWrapper;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-$$Nest$fgetmScroller(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;

    move-result-object v0

    return-object v0
.end method
