.class Landroid/app/PropertyInvalidatedCache$AutoCorker$1;
.super Landroid/os/Handler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/PropertyInvalidatedCache$AutoCorker;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/PropertyInvalidatedCache$AutoCorker;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1277
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;->this$0:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1280
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;->this$0:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-static {v0, p1}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->-$$Nest$mhandleMessage(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Message;)V

    .line 1281
    return-void
.end method
