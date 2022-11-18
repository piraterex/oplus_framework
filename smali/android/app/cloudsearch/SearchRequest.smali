.class public final Landroid/app/cloudsearch/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchRequest$Builder;,
        Landroid/app/cloudsearch/SearchRequest$SearchConstraintKey;
    }
.end annotation


# static fields
.field public static final whitelist CONSTRAINT_IS_PRESUBMIT_SUGGESTION:Ljava/lang/String; = "android.app.cloudsearch.IS_PRESUBMIT_SUGGESTION"

.field public static final whitelist CONSTRAINT_SEARCH_PROVIDER_FILTER:Ljava/lang/String; = "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mMaxLatencyMillis:F

.field private final blacklist mQuery:Ljava/lang/String;

.field private final blacklist mResultNumber:I

.field private final blacklist mResultOffset:I

.field private blacklist mSearchConstraints:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Landroid/app/cloudsearch/SearchRequest$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchRequest$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/cloudsearch/SearchRequest$Builder;)V
    .locals 1
    .param p1, "b"    # Landroid/app/cloudsearch/SearchRequest$Builder;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmQuery(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmResultOffset(Landroid/app/cloudsearch/SearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    .line 179
    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmResultNumber(Landroid/app/cloudsearch/SearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    .line 180
    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmMaxLatencyMillis(Landroid/app/cloudsearch/SearchRequest$Builder;)F

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    .line 181
    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmSearchConstraints(Landroid/app/cloudsearch/SearchRequest$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    .line 182
    invoke-static {p1}, Landroid/app/cloudsearch/SearchRequest$Builder;->-$$Nest$fgetmCallerPackageName(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/cloudsearch/SearchRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/cloudsearch/SearchRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "resultOffset"    # I
    .param p3, "resultNumber"    # I
    .param p4, "maxLatencyMillis"    # F
    .param p5, "searchConstraints"    # Landroid/os/Bundle;
    .param p6, "callerPackageName"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    .line 118
    iput p2, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    .line 119
    iput p3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    .line 120
    iput p4, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    .line 121
    iput-object p5, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    .line 122
    iput-object p6, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/cloudsearch/SearchRequest;-><init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 221
    return v0

    .line 224
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/cloudsearch/SearchRequest;

    .line 229
    .local v2, "that":Landroid/app/cloudsearch/SearchRequest;
    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    iget v4, v2, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    iget v4, v2, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    iget v4, v2, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    .line 233
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    .line 234
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 229
    :goto_0
    return v0

    .line 225
    .end local v2    # "that":Landroid/app/cloudsearch/SearchRequest;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getCallerPackageName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxLatencyMillis()F
    .locals 1

    .line 143
    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    return v0
.end method

.method public whitelist getQuery()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequestId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/app/cloudsearch/SearchRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    .line 165
    :cond_1
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultNumber()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    return v0
.end method

.method public whitelist getResultOffset()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    return v0
.end method

.method public whitelist getSearchConstraints()Landroid/os/Bundle;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 256
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 239
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    .line 240
    const-string v1, "android.app.cloudsearch.IS_PRESUBMIT_SUGGESTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    .line 241
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 243
    .local v0, "isPresubmit":Z
    :goto_0
    const-string v1, "EMPTY"

    .line 244
    .local v1, "searchProvider":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    const-string v5, "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    iget-object v4, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_1
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v3

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    aput-object v3, v4, v2

    .line 248
    const-string v2, "SearchRequest: {query:%s,offset:%d;number:%d;max_latency:%f;is_presubmit:%b;search_provider:%s;callerPackageName:%s}"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mResultNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/app/cloudsearch/SearchRequest;->mMaxLatencyMillis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 208
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mSearchConstraints:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    return-void
.end method
