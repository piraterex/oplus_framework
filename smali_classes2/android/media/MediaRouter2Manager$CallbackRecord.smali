.class final Landroid/media/MediaRouter2Manager$CallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final blacklist mCallback:Landroid/media/MediaRouter2Manager$Callback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2Manager;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRouter2Manager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/MediaRouter2Manager$Callback;

    .line 1075
    iput-object p1, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p2, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1077
    iput-object p3, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    .line 1078
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1082
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1083
    return v0

    .line 1085
    :cond_0
    instance-of v1, p1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1086
    return v2

    .line 1088
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1093
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
