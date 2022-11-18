.class public abstract Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishInput:I = 0x2

.field static final blacklist TRANSACTION_finishSession:I = 0x3

.field static final blacklist TRANSACTION_invalidateInput:I = 0x4

.field static final blacklist TRANSACTION_updateSelection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "invalidateInput"

    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "finishSession"

    return-object v0

    .line 66
    :pswitch_2
    const-string v0, "finishInput"

    return-object v0

    .line 62
    :pswitch_3
    const-string/jumbo v0, "updateSelection"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 226
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    .line 90
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 101
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 145
    move-object/from16 v15, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 97
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v3

    .line 134
    :pswitch_1
    sget-object v5, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    .line 136
    .local v5, "_arg0":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v6

    .line 138
    .local v6, "_arg1":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 139
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v6, v7}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    .line 141
    goto :goto_0

    .line 128
    .end local v5    # "_arg0":Landroid/view/inputmethod/EditorInfo;
    .end local v6    # "_arg1":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v7    # "_arg2":I
    :pswitch_2
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishSession()V

    .line 129
    goto :goto_0

    .line 123
    :pswitch_3
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishInput()V

    .line 124
    goto :goto_0

    .line 106
    :pswitch_4
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 112
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 114
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 116
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 117
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    move-object/from16 v8, p0

    move v9, v5

    move v10, v6

    move v11, v7

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 119
    nop

    .line 148
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
