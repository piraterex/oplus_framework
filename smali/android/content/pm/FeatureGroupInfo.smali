.class public final Landroid/content/pm/FeatureGroupInfo;
.super Ljava/lang/Object;
.source "FeatureGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist features:[Landroid/content/pm/FeatureInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/content/pm/FeatureGroupInfo$1;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/FeatureGroupInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/content/pm/FeatureGroupInfo;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p1, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    iput-object v0, p0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget-object v0, p0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 50
    return-void
.end method
