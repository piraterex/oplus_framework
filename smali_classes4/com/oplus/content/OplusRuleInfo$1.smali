.class Lcom/oplus/content/OplusRuleInfo$1;
.super Ljava/lang/Object;
.source "OplusRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusRuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/content/OplusRuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/content/OplusRuleInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 270
    new-instance v0, Lcom/oplus/content/OplusRuleInfo;

    invoke-direct {v0, p1}, Lcom/oplus/content/OplusRuleInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/oplus/content/OplusRuleInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/content/OplusRuleInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/content/OplusRuleInfo;
    .locals 1
    .param p1, "size"    # I

    .line 275
    new-array v0, p1, [Lcom/oplus/content/OplusRuleInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/oplus/content/OplusRuleInfo$1;->newArray(I)[Lcom/oplus/content/OplusRuleInfo;

    move-result-object p1

    return-object p1
.end method
