.class final Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;
.super Landroid/app/cloudsearch/ICloudSearchManagerCallback$Stub;
.source "CloudSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/CloudSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallBackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

.field private final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

.field final synthetic blacklist this$0:Landroid/app/cloudsearch/CloudSearchManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/cloudsearch/CloudSearchManager;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/CloudSearchManager$CallBack;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;
    .param p3, "callback"    # Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .line 109
    iput-object p1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->this$0:Landroid/app/cloudsearch/CloudSearchManager;

    invoke-direct {p0}, Landroid/app/cloudsearch/ICloudSearchManagerCallback$Stub;-><init>()V

    .line 110
    iput-object p2, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    .line 111
    iput-object p3, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    .line 112
    iput-object p4, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 113
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSearchFailed$1$android-app-cloudsearch-CloudSearchManager$CallBackWrapper(Landroid/app/cloudsearch/SearchResponse;)V
    .locals 2
    .param p1, "searchResponse"    # Landroid/app/cloudsearch/SearchResponse;

    .line 125
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iget-object v1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    invoke-interface {v0, v1, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBack;->onSearchFailed(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method

.method synthetic blacklist lambda$onSearchSucceeded$0$android-app-cloudsearch-CloudSearchManager$CallBackWrapper(Landroid/app/cloudsearch/SearchResponse;)V
    .locals 2
    .param p1, "searchResponse"    # Landroid/app/cloudsearch/SearchResponse;

    .line 119
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallback:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iget-object v1, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    invoke-interface {v0, v1, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBack;->onSearchSucceeded(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method

.method public blacklist onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    .locals 2
    .param p1, "searchResponse"    # Landroid/app/cloudsearch/SearchResponse;

    .line 124
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;Landroid/app/cloudsearch/SearchResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public blacklist onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V
    .locals 2
    .param p1, "searchResponse"    # Landroid/app/cloudsearch/SearchResponse;

    .line 118
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;Landroid/app/cloudsearch/SearchResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method
