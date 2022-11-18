.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final blacklist TRANSACTION_bindInput:I = 0x13

.field static final greylist-max-o TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final blacklist TRANSACTION_createImeSession:I = 0x11

.field static final greylist-max-o TRANSACTION_init:I = 0x1

.field static final greylist-max-o TRANSACTION_onAccessibilityButtonAvailabilityChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onAccessibilityButtonClicked:I = 0xe

.field static final greylist-max-o TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_onFingerprintCapturingGesturesChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onFingerprintGesture:I = 0xd

.field static final greylist-max-o TRANSACTION_onGesture:I = 0x4

.field static final greylist-max-o TRANSACTION_onInterrupt:I = 0x3

.field static final greylist-max-o TRANSACTION_onKeyEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_onMagnificationChanged:I = 0x7

.field static final blacklist TRANSACTION_onMotionEvent:I = 0x8

.field static final greylist-max-o TRANSACTION_onPerformGestureResult:I = 0xb

.field static final greylist-max-o TRANSACTION_onSoftKeyboardShowModeChanged:I = 0xa

.field static final blacklist TRANSACTION_onSystemActionsChanged:I = 0x10

.field static final blacklist TRANSACTION_onTouchStateChanged:I = 0x9

.field static final blacklist TRANSACTION_setImeSessionEnabled:I = 0x12

.field static final blacklist TRANSACTION_startInput:I = 0x15

.field static final blacklist TRANSACTION_unbindInput:I = 0x14


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 197
    :pswitch_0
    const-string/jumbo v0, "startInput"

    return-object v0

    .line 193
    :pswitch_1
    const-string/jumbo v0, "unbindInput"

    return-object v0

    .line 189
    :pswitch_2
    const-string v0, "bindInput"

    return-object v0

    .line 185
    :pswitch_3
    const-string/jumbo v0, "setImeSessionEnabled"

    return-object v0

    .line 181
    :pswitch_4
    const-string v0, "createImeSession"

    return-object v0

    .line 177
    :pswitch_5
    const-string/jumbo v0, "onSystemActionsChanged"

    return-object v0

    .line 173
    :pswitch_6
    const-string/jumbo v0, "onAccessibilityButtonAvailabilityChanged"

    return-object v0

    .line 169
    :pswitch_7
    const-string/jumbo v0, "onAccessibilityButtonClicked"

    return-object v0

    .line 165
    :pswitch_8
    const-string/jumbo v0, "onFingerprintGesture"

    return-object v0

    .line 161
    :pswitch_9
    const-string/jumbo v0, "onFingerprintCapturingGesturesChanged"

    return-object v0

    .line 157
    :pswitch_a
    const-string/jumbo v0, "onPerformGestureResult"

    return-object v0

    .line 153
    :pswitch_b
    const-string/jumbo v0, "onSoftKeyboardShowModeChanged"

    return-object v0

    .line 149
    :pswitch_c
    const-string/jumbo v0, "onTouchStateChanged"

    return-object v0

    .line 145
    :pswitch_d
    const-string/jumbo v0, "onMotionEvent"

    return-object v0

    .line 141
    :pswitch_e
    const-string/jumbo v0, "onMagnificationChanged"

    return-object v0

    .line 137
    :pswitch_f
    const-string/jumbo v0, "onKeyEvent"

    return-object v0

    .line 133
    :pswitch_10
    const-string v0, "clearAccessibilityCache"

    return-object v0

    .line 129
    :pswitch_11
    const-string/jumbo v0, "onGesture"

    return-object v0

    .line 125
    :pswitch_12
    const-string/jumbo v0, "onInterrupt"

    return-object v0

    .line 121
    :pswitch_13
    const-string/jumbo v0, "onAccessibilityEvent"

    return-object v0

    .line 117
    :pswitch_14
    const-string v0, "init"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 707
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 208
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    .line 213
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 214
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 224
    packed-switch p1, :pswitch_data_1

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 220
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return v1

    .line 392
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v2

    .line 394
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 396
    .local v3, "_arg1":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 397
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 399
    goto/16 :goto_0

    .line 386
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v3    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "_arg2":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->unbindInput()V

    .line 387
    goto/16 :goto_0

    .line 381
    :pswitch_3
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->bindInput()V

    .line 382
    goto/16 :goto_0

    .line 372
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object v2

    .line 374
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 375
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    .line 377
    goto/16 :goto_0

    .line 364
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    move-result-object v2

    .line 365
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 367
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    :pswitch_6
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSystemActionsChanged()V

    .line 359
    goto/16 :goto_0

    .line 351
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 352
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 354
    goto/16 :goto_0

    .line 343
    .end local v2    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonClicked(I)V

    .line 346
    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintGesture(I)V

    .line 338
    goto/16 :goto_0

    .line 327
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 328
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintCapturingGesturesChanged(Z)V

    .line 330
    goto/16 :goto_0

    .line 317
    .end local v2    # "_arg0":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 320
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    .line 322
    goto/16 :goto_0

    .line 309
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    .line 312
    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onTouchStateChanged(II)V

    .line 304
    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 292
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 294
    goto :goto_0

    .line 279
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 283
    .local v3, "_arg1":Landroid/graphics/Region;
    sget-object v4, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/MagnificationConfig;

    .line 284
    .local v4, "_arg2":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 286
    goto :goto_0

    .line 269
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Region;
    .end local v4    # "_arg2":Landroid/accessibilityservice/MagnificationConfig;
    :pswitch_10
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 271
    .local v2, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 274
    goto :goto_0

    .line 263
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    .end local v3    # "_arg1":I
    :pswitch_11
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    .line 264
    goto :goto_0

    .line 256
    :pswitch_12
    sget-object v2, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 257
    .local v2, "_arg0":Landroid/accessibilityservice/AccessibilityGestureEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 259
    goto :goto_0

    .line 250
    .end local v2    # "_arg0":Landroid/accessibilityservice/AccessibilityGestureEvent;
    :pswitch_13
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    .line 251
    goto :goto_0

    .line 241
    :pswitch_14
    sget-object v2, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 243
    .local v2, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 244
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 246
    goto :goto_0

    .line 229
    .end local v2    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "_arg1":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 234
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 236
    nop

    .line 406
    .end local v2    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_1
    .end packed-switch
.end method
