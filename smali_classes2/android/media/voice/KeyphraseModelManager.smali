.class public final Landroid/media/voice/KeyphraseModelManager;
.super Ljava/lang/Object;
.source "KeyphraseModelManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KeyphraseModelManager"


# instance fields
.field private final blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .locals 0
    .param p1, "voiceInteractionManagerService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist deleteKeyphraseSoundModel(ILjava/util/Locale;)V
    .locals 2
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 146
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 149
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "status":I
    if-nez v0, :cond_0

    .line 155
    .end local v0    # "status":I
    nop

    .line 156
    return-void

    .line 151
    .restart local v0    # "status":I
    :cond_0
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-direct {v1, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .end local p1    # "keyphraseId":I
    .end local p2    # "locale":Ljava/util/Locale;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "status":I
    .restart local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .restart local p1    # "keyphraseId":I
    .restart local p2    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getKeyphraseSoundModel(ILjava/util/Locale;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 2
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 88
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)V
    .locals 2
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v0

    .line 117
    .local v0, "status":I
    if-nez v0, :cond_0

    .line 122
    .end local v0    # "status":I
    nop

    .line 123
    return-void

    .line 118
    .restart local v0    # "status":I
    :cond_0
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-direct {v1, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "status":I
    .restart local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
