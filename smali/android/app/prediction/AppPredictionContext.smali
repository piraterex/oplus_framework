.class public final Landroid/app/prediction/AppPredictionContext;
.super Ljava/lang/Object;
.source "AppPredictionContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppPredictionContext$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppPredictionContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPredictedTargetCount:I

.field private final blacklist mUiSurface:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Landroid/app/prediction/AppPredictionContext$1;

    invoke-direct {v0}, Landroid/app/prediction/AppPredictionContext$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppPredictionContext-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/prediction/AppPredictionContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uiSurface"    # Ljava/lang/String;
    .param p2, "numPredictedTargets"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    .line 47
    iput p2, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    .line 48
    iput-object p3, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/prediction/AppPredictionContext-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/prediction/AppPredictionContext;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 95
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/app/prediction/AppPredictionContext;

    .line 96
    .local v1, "other":Landroid/app/prediction/AppPredictionContext;
    iget v3, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    iget v4, v1, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 96
    :goto_1
    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPredictedTargetCount()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    return v0
.end method

.method public whitelist getUiSurface()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method
