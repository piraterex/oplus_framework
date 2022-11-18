.class public final Lcom/oplus/util/OplusUXIconData;
.super Ljava/lang/Object;
.source "OplusUXIconData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusUXIconData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/oplus/util/OplusUXIconData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusUXIconData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusUXIconData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusUXIconData;->mList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusUXIconData;->mList:Ljava/util/List;

    .line 47
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusUXIconData;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPresetAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/oplus/util/OplusUXIconData;->mList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    iget-object v0, p0, Lcom/oplus/util/OplusUXIconData;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-object v0, p0, Lcom/oplus/util/OplusUXIconData;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 58
    return-void
.end method
