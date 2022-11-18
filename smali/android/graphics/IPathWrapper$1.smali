.class Landroid/graphics/IPathWrapper$1;
.super Ljava/lang/Object;
.source "IPathWrapper.java"

# interfaces
.implements Landroid/graphics/IPathExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/IPathWrapper;->getPathExt()Landroid/graphics/IPathExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/IPathWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/IPathWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/IPathWrapper;

    .line 24
    iput-object p1, p0, Landroid/graphics/IPathWrapper$1;->this$0:Landroid/graphics/IPathWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
