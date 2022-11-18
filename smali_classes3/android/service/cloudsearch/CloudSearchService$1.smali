.class Landroid/service/cloudsearch/CloudSearchService$1;
.super Landroid/service/cloudsearch/ICloudSearchService$Stub;
.source "CloudSearchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/cloudsearch/CloudSearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/cloudsearch/CloudSearchService;


# direct methods
.method constructor blacklist <init>(Landroid/service/cloudsearch/CloudSearchService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/cloudsearch/CloudSearchService;

    .line 80
    iput-object p1, p0, Landroid/service/cloudsearch/CloudSearchService$1;->this$0:Landroid/service/cloudsearch/CloudSearchService;

    invoke-direct {p0}, Landroid/service/cloudsearch/ICloudSearchService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSearch(Landroid/app/cloudsearch/SearchRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;

    .line 83
    iget-object v0, p0, Landroid/service/cloudsearch/CloudSearchService$1;->this$0:Landroid/service/cloudsearch/CloudSearchService;

    invoke-static {v0}, Landroid/service/cloudsearch/CloudSearchService;->-$$Nest$fgetmHandler(Landroid/service/cloudsearch/CloudSearchService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/cloudsearch/CloudSearchService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/cloudsearch/CloudSearchService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/cloudsearch/CloudSearchService$1;->this$0:Landroid/service/cloudsearch/CloudSearchService;

    .line 84
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    return-void
.end method
