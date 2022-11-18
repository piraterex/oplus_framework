.class public final synthetic Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;->f$0:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;->f$0:Landroid/os/IRemoteCallback;

    invoke-static {v0, p1}, Landroid/service/voice/HotwordDetectionService;->lambda$onUpdateStateInternal$0(Landroid/os/IRemoteCallback;I)V

    return-void
.end method
