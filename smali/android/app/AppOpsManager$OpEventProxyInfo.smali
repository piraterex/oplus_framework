.class public final Landroid/app/AppOpsManager$OpEventProxyInfo;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEventProxyInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 3678
    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3590
    iput p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3591
    const-class v0, Landroid/annotation/IntRange;

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3594
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3595
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3598
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3607
    iget v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3608
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3609
    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3610
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3662
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 3663
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3664
    .local v7, "uid":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 3665
    .local v8, "packageName":Ljava/lang/String;
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    .line 3667
    .local v9, "attributionTag":Ljava/lang/String;
    iput v7, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3668
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const-string v4, "from"

    move v3, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 3671
    iput-object v8, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3672
    iput-object v9, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3675
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 3653
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 3633
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 3625
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 3617
    iget v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    return v0
.end method

.method public blacklist reinit(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3554
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    .line 3555
    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    .line 3556
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    .line 3557
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3642
    const/4 v0, 0x0

    .line 3643
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 3644
    :cond_0
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 3645
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3646
    iget v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3647
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3648
    :cond_2
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3649
    :cond_3
    return-void
.end method
