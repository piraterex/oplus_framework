.class Landroid/service/dreams/DreamService$1;
.super Landroid/service/dreams/IDreamOverlayCallback$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    .line 321
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onExitRequested()V
    .locals 1

    .line 325
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    .line 326
    return-void
.end method
