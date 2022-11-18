.class public Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublishStateCallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;
    }
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->mBinder:Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;

    .line 425
    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .locals 1

    .line 429
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->mBinder:Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;

    return-object v0
.end method
