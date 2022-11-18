.class Landroid/telecom/DisconnectCause$1;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/DisconnectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/DisconnectCause;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/DisconnectCause;
    .locals 19
    .param p1, "source"    # Landroid/os/Parcel;

    .line 283
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 284
    .local v10, "code":I
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/CharSequence;

    .line 285
    .local v11, "label":Ljava/lang/CharSequence;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;

    .line 286
    .local v12, "description":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "reason":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 288
    .local v14, "tone":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 289
    .local v15, "telephonyDisconnectCause":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 290
    .local v16, "telephonyPreciseDisconnectCause":I
    const-class v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/telephony/ims/ImsReasonInfo;

    .line 291
    .local v17, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v18, Landroid/telecom/DisconnectCause;

    move-object/from16 v1, v18

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V

    return-object v18
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Landroid/telecom/DisconnectCause$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/DisconnectCause;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/DisconnectCause;
    .locals 1
    .param p1, "size"    # I

    .line 297
    new-array v0, p1, [Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Landroid/telecom/DisconnectCause$1;->newArray(I)[Landroid/telecom/DisconnectCause;

    move-result-object p1

    return-object p1
.end method
