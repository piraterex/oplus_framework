.class public abstract Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAugmentedAutofillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAugmentedAutofillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAugmentedAutofillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_autofill:I = 0x3

.field static final blacklist TRANSACTION_getViewCoordinates:I = 0x1

.field static final blacklist TRANSACTION_getViewNodeParcelable:I = 0x2

.field static final blacklist TRANSACTION_requestAutofill:I = 0x6

.field static final blacklist TRANSACTION_requestHideFillUi:I = 0x5

.field static final blacklist TRANSACTION_requestShowFillUi:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAugmentedAutofillManagerClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAugmentedAutofillManagerClient;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_0
    const-string v0, "requestAutofill"

    return-object v0

    .line 101
    :pswitch_1
    const-string v0, "requestHideFillUi"

    return-object v0

    .line 97
    :pswitch_2
    const-string v0, "requestShowFillUi"

    return-object v0

    .line 93
    :pswitch_3
    const-string v0, "autofill"

    return-object v0

    .line 89
    :pswitch_4
    const-string v0, "getViewNodeParcelable"

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "getViewCoordinates"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 361
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.view.autofill.IAugmentedAutofillManagerClient"

    .line 121
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 122
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 132
    packed-switch v8, :pswitch_data_1

    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 128
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v12

    .line 202
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 205
    .local v1, "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestAutofill(ILandroid/view/autofill/AutofillId;)Z

    move-result v2

    .line 207
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    goto/16 :goto_0

    .line 191
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 194
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .local v13, "_arg0":I
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/autofill/AutofillId;

    .line 176
    .local v14, "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 178
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 180
    .local v16, "_arg3":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Rect;

    .line 182
    .local v17, "_arg4":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v18

    .line 183
    .local v18, "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_0

    .line 157
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/graphics/Rect;
    .end local v18    # "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 164
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_0

    .line 147
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "_arg3":Z
    :pswitch_5
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 148
    .local v0, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    move-result-object v1

    .line 150
    .local v1, "_result":Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    goto :goto_0

    .line 137
    .end local v0    # "_arg0":Landroid/view/autofill/AutofillId;
    .end local v1    # "_result":Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    :pswitch_6
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 138
    .restart local v0    # "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;

    move-result-object v1

    .line 140
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    nop

    .line 216
    .end local v0    # "_arg0":Landroid/view/autofill/AutofillId;
    .end local v1    # "_result":Landroid/graphics/Rect;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
