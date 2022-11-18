.class Landroid/view/IViewRootImplWrapper$1;
.super Ljava/lang/Object;
.source "IViewRootImplWrapper.java"

# interfaces
.implements Landroid/view/IViewRootImplExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/IViewRootImplWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/view/IViewRootImplWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/IViewRootImplWrapper;

    .line 45
    iput-object p1, p0, Landroid/view/IViewRootImplWrapper$1;->this$0:Landroid/view/IViewRootImplWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
