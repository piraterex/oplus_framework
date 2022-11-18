.class Landroid/app/admin/PasswordMetrics$1;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/PasswordMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/PasswordMetrics;
    .locals 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 172
    .local v11, "credType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 173
    .local v12, "length":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .local v13, "letters":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 175
    .local v14, "upperCase":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 176
    .local v15, "lowerCase":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 177
    .local v16, "numeric":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 178
    .local v17, "symbols":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 179
    .local v18, "nonLetter":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 180
    .local v19, "nonNumeric":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 181
    .local v20, "seqLength":I
    new-instance v21, Landroid/app/admin/PasswordMetrics;

    move-object/from16 v0, v21

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-object v21
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Landroid/app/admin/PasswordMetrics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/PasswordMetrics;
    .locals 1
    .param p1, "size"    # I

    .line 187
    new-array v0, p1, [Landroid/app/admin/PasswordMetrics;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Landroid/app/admin/PasswordMetrics$1;->newArray(I)[Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    return-object p1
.end method
