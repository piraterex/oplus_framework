.class public abstract Lcom/android/internal/view/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodSession"

.field static final greylist-max-o TRANSACTION_appPrivateCommand:I = 0x6

.field static final greylist-max-o TRANSACTION_displayCompletions:I = 0x5

.field static final greylist-max-o TRANSACTION_finishInput:I = 0xa

.field static final greylist-max-o TRANSACTION_finishSession:I = 0x7

.field static final blacklist TRANSACTION_invalidateInput:I = 0xb

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x9

.field static final greylist-max-o TRANSACTION_updateCursor:I = 0x4

.field static final greylist-max-o TRANSACTION_updateCursorAnchorInfo:I = 0x8

.field static final greylist-max-o TRANSACTION_updateExtractedText:I = 0x1

.field static final greylist-max-o TRANSACTION_updateSelection:I = 0x2

.field static final greylist-max-o TRANSACTION_viewClicked:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodSession;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :pswitch_0
    const-string v0, "invalidateInput"

    return-object v0

    .line 122
    :pswitch_1
    const-string v0, "finishInput"

    return-object v0

    .line 118
    :pswitch_2
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 114
    :pswitch_3
    const-string/jumbo v0, "updateCursorAnchorInfo"

    return-object v0

    .line 110
    :pswitch_4
    const-string v0, "finishSession"

    return-object v0

    .line 106
    :pswitch_5
    const-string v0, "appPrivateCommand"

    return-object v0

    .line 102
    :pswitch_6
    const-string v0, "displayCompletions"

    return-object v0

    .line 98
    :pswitch_7
    const-string/jumbo v0, "updateCursor"

    return-object v0

    .line 94
    :pswitch_8
    const-string/jumbo v0, "viewClicked"

    return-object v0

    .line 90
    :pswitch_9
    const-string/jumbo v0, "updateSelection"

    return-object v0

    .line 86
    :pswitch_a
    const-string/jumbo v0, "updateExtractedText"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 428
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 141
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.android.internal.view.IInputMethodSession"

    .line 142
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 143
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 153
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 254
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 149
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v11

    .line 243
    :pswitch_1
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/EditorInfo;

    .line 245
    .local v0, "_arg0":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v1

    .line 247
    .local v1, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V

    .line 250
    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":Landroid/view/inputmethod/EditorInfo;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v2    # "_arg2":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishInput()V

    .line 238
    goto/16 :goto_0

    .line 232
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->removeImeSurface()V

    .line 233
    goto/16 :goto_0

    .line 225
    :pswitch_4
    sget-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 226
    .local v0, "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 228
    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishSession()V

    .line 220
    goto/16 :goto_0

    .line 210
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 213
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    goto :goto_0

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_7
    sget-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    .line 203
    .local v0, "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 205
    goto :goto_0

    .line 194
    .end local v0    # "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    :pswitch_8
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 195
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    .line 197
    goto :goto_0

    .line 186
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 187
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v7, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->viewClicked(Z)V

    .line 189
    goto :goto_0

    .line 168
    .end local v0    # "_arg0":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 170
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 172
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 174
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 176
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 178
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 179
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 181
    goto :goto_0

    .line 158
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    .line 161
    .local v1, "_arg1":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 163
    nop

    .line 257
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
