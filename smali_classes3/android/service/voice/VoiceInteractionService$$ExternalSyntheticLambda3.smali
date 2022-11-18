.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;->f$0:Landroid/service/voice/VoiceInteractionService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;->f$0:Landroid/service/voice/VoiceInteractionService;

    check-cast p1, Landroid/service/voice/AbstractHotwordDetector;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionService;->lambda$createHotwordDetector$2$android-service-voice-VoiceInteractionService(Landroid/service/voice/AbstractHotwordDetector;)V

    return-void
.end method
