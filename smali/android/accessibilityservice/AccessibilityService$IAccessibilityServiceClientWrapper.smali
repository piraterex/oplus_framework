.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# static fields
.field private static final greylist-max-o DO_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0xd

.field private static final greylist-max-o DO_ACCESSIBILITY_BUTTON_CLICKED:I = 0xc

.field private static final greylist-max-o DO_CLEAR_ACCESSIBILITY_CACHE:I = 0x5

.field private static final blacklist DO_CREATE_IME_SESSION:I = 0xf

.field private static final greylist-max-o DO_GESTURE_COMPLETE:I = 0x9

.field private static final greylist-max-o DO_INIT:I = 0x1

.field private static final greylist-max-o DO_ON_ACCESSIBILITY_EVENT:I = 0x3

.field private static final greylist-max-o DO_ON_FINGERPRINT_ACTIVE_CHANGED:I = 0xa

.field private static final greylist-max-o DO_ON_FINGERPRINT_GESTURE:I = 0xb

.field private static final greylist-max-o DO_ON_GESTURE:I = 0x4

.field private static final greylist-max-o DO_ON_INTERRUPT:I = 0x2

.field private static final greylist-max-o DO_ON_KEY_EVENT:I = 0x6

.field private static final greylist-max-o DO_ON_MAGNIFICATION_CHANGED:I = 0x7

.field private static final greylist-max-o DO_ON_SOFT_KEYBOARD_SHOW_MODE_CHANGED:I = 0x8

.field private static final blacklist DO_ON_SYSTEM_ACTIONS_CHANGED:I = 0xe

.field private static final blacklist DO_SET_IME_SESSION_ENABLED:I = 0x10

.field private static final blacklist DO_START_INPUT:I = 0x13


# instance fields
.field private final greylist-max-o mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field private final greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private greylist-max-o mConnectionId:I

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2797
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    .line 2779
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2793
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2798
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2799
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 2800
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2801
    return-void
.end method


# virtual methods
.method public blacklist bindInput()V
    .locals 2

    .line 2917
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    .line 2918
    const-string v0, "AccessibilityService"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2921
    return-void
.end method

.method public greylist-max-o clearAccessibilityCache()V
    .locals 2

    .line 2828
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2829
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2830
    return-void
.end method

.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 2891
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2892
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2893
    return-void
.end method

.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 2964
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "AccessibilityService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_0

    .line 3146
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    return-void

    .line 3129
    :pswitch_1
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_2

    .line 3130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3131
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 3133
    .local v2, "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    .line 3134
    .local v5, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/CancellationGroup;

    .line 3135
    .local v6, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v7, v4, :cond_0

    move v3, v4

    .line 3136
    .local v3, "restarting":Z
    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 3137
    :cond_1
    new-instance v1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-direct {v1, v2, v6}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_0
    nop

    .line 3139
    .local v1, "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 3140
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v4, v1, v5, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3141
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3143
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .end local v2    # "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v3    # "restarting":Z
    .end local v5    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v6    # "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    :cond_2
    return-void

    .line 3121
    :pswitch_2
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_4

    .line 3122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 3124
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    move v3, v4

    :cond_3
    invoke-interface {v0, v3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->setEnabled(Z)V

    .line 3126
    .end local v0    # "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    :cond_4
    return-void

    .line 3113
    :pswitch_3
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_5

    .line 3114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 3116
    .local v0, "callback":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 3118
    .end local v0    # "callback":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    :cond_5
    return-void

    .line 3107
    :pswitch_4
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_6

    .line 3108
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSystemActionsChanged()V

    .line 3110
    :cond_6
    return-void

    .line 3100
    :pswitch_5
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_8

    .line 3101
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    move v0, v3

    .line 3102
    .local v0, "available":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 3104
    .end local v0    # "available":Z
    :cond_8
    return-void

    .line 3094
    :pswitch_6
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_9

    .line 3095
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonClicked(I)V

    .line 3097
    :cond_9
    return-void

    .line 3088
    :pswitch_7
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_a

    .line 3089
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintGesture(I)V

    .line 3091
    :cond_a
    return-void

    .line 3082
    :pswitch_8
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_c

    .line 3083
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_b

    move v3, v4

    :cond_b
    invoke-interface {v0, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintCapturingGesturesChanged(Z)V

    .line 3085
    :cond_c
    return-void

    .line 3075
    :pswitch_9
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_e

    .line 3076
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_d

    move v3, v4

    :cond_d
    move v0, v3

    .line 3077
    .local v0, "successfully":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onPerformGestureResult(IZ)V

    .line 3079
    .end local v0    # "successfully":Z
    :cond_e
    return-void

    .line 3068
    :pswitch_a
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_f

    .line 3069
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3070
    .local v0, "showMode":I
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSoftKeyboardShowModeChanged(I)V

    .line 3072
    .end local v0    # "showMode":I
    :cond_f
    return-void

    .line 3057
    :pswitch_b
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_10

    .line 3058
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3059
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Region;

    .line 3060
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/accessibilityservice/MagnificationConfig;

    .line 3061
    .local v2, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3062
    .local v3, "displayId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3063
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v4, v3, v1, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 3065
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local v3    # "displayId":I
    :cond_10
    return-void

    .line 3033
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3035
    .local v0, "event":Landroid/view/KeyEvent;
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 3036
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 3037
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_11

    .line 3038
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 3039
    .local v2, "result":Z
    iget v3, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3041
    .local v3, "sequence":I
    :try_start_1
    invoke-interface {v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3044
    goto :goto_1

    .line 3042
    :catch_0
    move-exception v4

    .line 3049
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "result":Z
    .end local v3    # "sequence":I
    :cond_11
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3052
    goto :goto_2

    .line 3050
    :catch_1
    move-exception v1

    .line 3053
    nop

    .line 3054
    :goto_2
    return-void

    .line 3048
    :catchall_0
    move-exception v1

    .line 3049
    :try_start_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3052
    goto :goto_3

    .line 3050
    :catch_2
    move-exception v2

    .line 3053
    :goto_3
    throw v1

    .line 3029
    .end local v0    # "event":Landroid/view/KeyEvent;
    :pswitch_d
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3030
    return-void

    .line 3023
    :pswitch_e
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_12

    .line 3024
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    .line 3026
    :cond_12
    return-void

    .line 2966
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 2967
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_13

    move v3, v4

    :cond_13
    move v1, v3

    .line 2968
    .local v1, "serviceWantsEvent":Z
    if-eqz v0, :cond_15

    .line 2970
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2972
    if-eqz v1, :cond_14

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v2, v5, :cond_14

    .line 2975
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2979
    :cond_14
    :try_start_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2982
    goto :goto_4

    .line 2980
    :catch_3
    move-exception v2

    .line 2984
    :cond_15
    :goto_4
    return-void

    .line 2987
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "serviceWantsEvent":Z
    :pswitch_10
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_16

    .line 2988
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    .line 2990
    :cond_16
    return-void

    .line 2993
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2994
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2995
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 2997
    .local v3, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    .line 2998
    .local v6, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2999
    if-eqz v3, :cond_18

    .line 3000
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v1, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    .line 3002
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 3004
    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAttributionTag(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3008
    goto :goto_5

    .line 3005
    :catch_4
    move-exception v1

    .line 3006
    .local v1, "re":Landroid/os/RemoteException;
    const-string v4, "Error while setting attributionTag"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3007
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3010
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_5
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-interface {v1, v2, v6}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 3011
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    goto :goto_6

    .line 3013
    :cond_18
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3014
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3015
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 3017
    iput v5, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3018
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v5, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 3020
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public greylist-max-o init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    .line 2805
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2807
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2808
    return-void
.end method

.method public greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 2
    .param p1, "available"    # Z

    .line 2879
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2880
    nop

    .line 2879
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2881
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2882
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 2873
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2875
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2876
    return-void
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "serviceWantsEvent"    # Z

    .line 2816
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2818
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2819
    return-void
.end method

.method public greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 2863
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2864
    nop

    .line 2863
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2865
    return-void
.end method

.method public greylist-max-o onFingerprintGesture(I)V
    .locals 2
    .param p1, "gesture"    # I

    .line 2868
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2869
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 2823
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2824
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2825
    return-void
.end method

.method public greylist-max-o onInterrupt()V
    .locals 2

    .line 2811
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2812
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2813
    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    .line 2834
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2835
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2836
    return-void
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 2841
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2842
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2843
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2844
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2846
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2847
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2848
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2949
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2951
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2952
    return-void
.end method

.method public greylist-max-o onPerformGestureResult(IZ)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "successfully"    # Z

    .line 2857
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2858
    nop

    .line 2857
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 2859
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2860
    return-void
.end method

.method public greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .locals 2
    .param p1, "showMode"    # I

    .line 2851
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2852
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2853
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2854
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .locals 2

    .line 2886
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2887
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 2956
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;-><init>()V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2958
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2956
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2959
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2960
    return-void
.end method

.method public blacklist setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 2902
    const-string v0, "AccessibilityService"

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    .line 2903
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;

    move-result-object v1

    .line 2904
    .local v1, "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-nez v1, :cond_0

    .line 2905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is already finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    return-void

    .line 2908
    :cond_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x10

    .line 2909
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2908
    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2912
    .end local v1    # "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    goto :goto_1

    .line 2910
    :catch_0
    move-exception v1

    .line 2911
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2913
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 9
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 2937
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_0

    .line 2938
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2941
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x13

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2942
    const/4 v8, 0x0

    .line 2941
    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    .line 2944
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2945
    return-void
.end method

.method public blacklist unbindInput()V
    .locals 2

    .line 2925
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    .line 2927
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 2928
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_0

    .line 2930
    :cond_0
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :goto_0
    return-void
.end method
