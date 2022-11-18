.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final greylist-max-o TRANSACTION_bindInput:I = 0x3

.field static final blacklist TRANSACTION_canStartStylusHandwriting:I = 0xc

.field static final greylist-max-o TRANSACTION_changeInputMethodSubtype:I = 0xb

.field static final greylist-max-o TRANSACTION_createSession:I = 0x7

.field static final blacklist TRANSACTION_finishStylusHandwriting:I = 0xf

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_initInkWindow:I = 0xe

.field static final blacklist TRANSACTION_initializeInternal:I = 0x1

.field static final blacklist TRANSACTION_onCreateInlineSuggestionsRequest:I = 0x2

.field static final blacklist TRANSACTION_onNavButtonFlagsChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_setSessionEnabled:I = 0x8

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x9

.field static final greylist-max-o TRANSACTION_startInput:I = 0x5

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0xd

.field static final greylist-max-o TRANSACTION_unbindInput:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 155
    :pswitch_0
    const-string v0, "finishStylusHandwriting"

    return-object v0

    .line 151
    :pswitch_1
    const-string v0, "initInkWindow"

    return-object v0

    .line 147
    :pswitch_2
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    .line 143
    :pswitch_3
    const-string v0, "canStartStylusHandwriting"

    return-object v0

    .line 139
    :pswitch_4
    const-string v0, "changeInputMethodSubtype"

    return-object v0

    .line 135
    :pswitch_5
    const-string v0, "hideSoftInput"

    return-object v0

    .line 131
    :pswitch_6
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    .line 127
    :pswitch_7
    const-string/jumbo v0, "setSessionEnabled"

    return-object v0

    .line 123
    :pswitch_8
    const-string v0, "createSession"

    return-object v0

    .line 119
    :pswitch_9
    const-string/jumbo v0, "onNavButtonFlagsChanged"

    return-object v0

    .line 115
    :pswitch_a
    const-string/jumbo v0, "startInput"

    return-object v0

    .line 111
    :pswitch_b
    const-string/jumbo v0, "unbindInput"

    return-object v0

    .line 107
    :pswitch_c
    const-string v0, "bindInput"

    return-object v0

    .line 103
    :pswitch_d
    const-string/jumbo v0, "onCreateInlineSuggestionsRequest"

    return-object v0

    .line 99
    :pswitch_e
    const-string v0, "initializeInternal"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 568
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 166
    invoke-static {p1}, Lcom/android/internal/view/IInputMethod$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.android.internal.view.IInputMethod"

    .line 171
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 172
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 182
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 333
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 178
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v11

    .line 328
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethod$Stub;->finishStylusHandwriting()V

    .line 329
    goto/16 :goto_0

    .line 323
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethod$Stub;->initInkWindow()V

    .line 324
    goto/16 :goto_0

    .line 312
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    .line 316
    .local v1, "_arg1":Landroid/view/InputChannel;
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 317
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/view/IInputMethod$Stub;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 319
    goto/16 :goto_0

    .line 304
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/InputChannel;
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethod$Stub;->canStartStylusHandwriting(I)V

    .line 307
    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":I
    :pswitch_5
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 297
    .local v0, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 299
    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 286
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 289
    .local v2, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 291
    goto/16 :goto_0

    .line 272
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 274
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 277
    .restart local v2    # "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 279
    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 264
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 265
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    .line 267
    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    .end local v1    # "_arg1":Z
    :pswitch_9
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    .line 254
    .local v0, "_arg0":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    move-result-object v1

    .line 255
    .local v1, "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    .line 257
    goto/16 :goto_0

    .line 244
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethod$Stub;->onNavButtonFlagsChanged(I)V

    .line 247
    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 228
    .local v13, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v14

    .line 230
    .local v14, "_arg1":Lcom/android/internal/view/IInputContext;
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/inputmethod/EditorInfo;

    .line 232
    .local v15, "_arg2":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 234
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 236
    .local v17, "_arg4":I
    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 237
    .local v18, "_arg5":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V

    .line 239
    goto :goto_0

    .line 220
    .end local v13    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v15    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/window/ImeOnBackInvokedDispatcher;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    .line 221
    goto :goto_0

    .line 213
    :pswitch_d
    sget-object v0, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputBinding;

    .line 214
    .local v0, "_arg0":Landroid/view/inputmethod/InputBinding;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 216
    goto :goto_0

    .line 203
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :pswitch_e
    sget-object v0, Lcom/android/internal/view/InlineSuggestionsRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 205
    .local v0, "_arg0":Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    move-result-object v1

    .line 206
    .local v1, "_arg1":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 208
    goto :goto_0

    .line 187
    .end local v0    # "_arg0":Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 189
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v13

    .line 191
    .local v13, "_arg1":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 193
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 195
    .local v15, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 196
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethod$Stub;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V

    .line 198
    nop

    .line 336
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
