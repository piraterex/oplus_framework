.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist mAudioManager:Landroid/media/AudioManager;

.field greylist mContext:Landroid/content/Context;

.field blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private blacklist mPFEHExt:Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

.field blacklist mSearchManager:Landroid/app/SearchManager;

.field blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field greylist mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPFEHExt:Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private blacklist handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPFEHExt:Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MediaSession handleMediaKeyEvent in PhoneFallbackEventHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;->inputLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    .line 357
    return-void
.end method

.method private blacklist handleVolumeKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPFEHExt:Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MediaSession handleVolumeKeyEvent in PhoneFallbackEventHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;->inputLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 349
    return-void
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z
    .locals 1
    .param p1, "dispatcher"    # Landroid/view/KeyEvent$DispatcherState;

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0
.end method

.method private blacklist isUserSetupComplete()Z
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public blacklist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPFEHExt:Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dispatchKeyEvent  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;->inputLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 78
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 80
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 83
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 320
    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method blacklist getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 93
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 95
    .local v3, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    const/high16 v0, 0x10000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 171
    :sswitch_0
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    goto/16 :goto_3

    .line 174
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 175
    invoke-virtual {v3, v2, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 176
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 177
    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 178
    .local v6, "config":Landroid/content/res/Configuration;
    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_2

    iget v7, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 180
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 182
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 187
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return v5

    .line 193
    :catch_0
    move-exception v0

    .line 196
    .end local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 197
    :cond_3
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 116
    .end local v6    # "config":Landroid/content/res/Configuration;
    :sswitch_1
    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 117
    return v5

    .line 147
    :sswitch_2
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 148
    goto/16 :goto_3

    .line 150
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 151
    invoke-virtual {v3, v2, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 153
    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 154
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 155
    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 157
    new-instance v4, Landroid/content/Intent;

    const/4 v6, 0x0

    const-string v7, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v4, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    iget-object v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 162
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 163
    :cond_6
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Not dispatching CAMERA long press because user setup is in progress."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_7
    :goto_0
    return v5

    .line 99
    :sswitch_3
    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 100
    return v5

    .line 121
    :sswitch_4
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 122
    goto :goto_3

    .line 124
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_9

    .line 125
    invoke-virtual {v3, v2, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_2

    .line 126
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 127
    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 129
    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 131
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    .line 138
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_1
    goto :goto_2

    .line 139
    :cond_a
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Not starting call activity because user setup is in progress."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b
    :goto_2
    return v5

    .line 205
    :cond_c
    :goto_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
        0x54 -> :sswitch_0
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_3
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method greylist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 219
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 223
    :cond_0
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 245
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 246
    return v1

    .line 250
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 256
    :cond_2
    return v1

    .line 227
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 228
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 230
    :cond_3
    return v1

    .line 260
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_0

    .line 267
    :cond_5
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting call activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_6
    :goto_0
    return v1

    .line 274
    :goto_1
    const/4 v1, 0x0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
        0xa4 -> :sswitch_2
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 70
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 66
    return-void
.end method

.method greylist startCallActivity()V
    .locals 4

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
