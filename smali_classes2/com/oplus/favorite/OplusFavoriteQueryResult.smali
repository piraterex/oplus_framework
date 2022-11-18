.class public Lcom/oplus/favorite/OplusFavoriteQueryResult;
.super Ljava/lang/Object;
.source "OplusFavoriteQueryResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/favorite/OplusFavoriteQueryResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final whitelist EXTRA_ERROR:Ljava/lang/String; = "error"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusFavoriteQueryResult"


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteQueryResult$1;

    invoke-direct {v0}, Lcom/oplus/favorite/OplusFavoriteQueryResult$1;-><init>()V

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->mBundle:Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->mBundle:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p0, p1}, Lcom/oplus/favorite/OplusFavoriteQueryResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteQueryResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    return-void
.end method
