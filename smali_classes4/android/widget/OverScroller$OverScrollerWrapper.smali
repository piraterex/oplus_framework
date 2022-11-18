.class Landroid/widget/OverScroller$OverScrollerWrapper;
.super Ljava/lang/Object;
.source "OverScroller.java"

# interfaces
.implements Landroid/widget/IOverScrollerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverScrollerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OverScroller;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/OverScroller;)V
    .locals 0

    .line 807
    iput-object p1, p0, Landroid/widget/OverScroller$OverScrollerWrapper;->this$0:Landroid/widget/OverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/OverScroller;Landroid/widget/OverScroller$OverScrollerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$OverScrollerWrapper;-><init>(Landroid/widget/OverScroller;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/widget/IOplusOverScrollerExt;
    .locals 1

    .line 811
    iget-object v0, p0, Landroid/widget/OverScroller$OverScrollerWrapper;->this$0:Landroid/widget/OverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller;->-$$Nest$fgetmOplusOverScrollerExt(Landroid/widget/OverScroller;)Landroid/widget/IOplusOverScrollerExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 816
    iget-object v0, p0, Landroid/widget/OverScroller$OverScrollerWrapper;->this$0:Landroid/widget/OverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller;->-$$Nest$fgetmMode(Landroid/widget/OverScroller;)I

    move-result v0

    return v0
.end method
