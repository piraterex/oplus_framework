.class Landroid/widget/IScrollViewWrapper$1;
.super Ljava/lang/Object;
.source "IScrollViewWrapper.java"

# interfaces
.implements Landroid/widget/IOplusScrollViewExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/IScrollViewWrapper;->getExtImpl()Landroid/widget/IOplusScrollViewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/IScrollViewWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/widget/IScrollViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/IScrollViewWrapper;

    .line 5
    iput-object p1, p0, Landroid/widget/IScrollViewWrapper$1;->this$0:Landroid/widget/IScrollViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
