.class Landroid/widget/IOverScrollerWrapper$1;
.super Ljava/lang/Object;
.source "IOverScrollerWrapper.java"

# interfaces
.implements Landroid/widget/IOplusOverScrollerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/IOverScrollerWrapper;->getExtImpl()Landroid/widget/IOplusOverScrollerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/IOverScrollerWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/widget/IOverScrollerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/IOverScrollerWrapper;

    .line 6
    iput-object p1, p0, Landroid/widget/IOverScrollerWrapper$1;->this$0:Landroid/widget/IOverScrollerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
