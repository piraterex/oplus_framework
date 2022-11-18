.class public final Landroid/os/TimestampedValue;
.super Ljava/lang/Object;
.source "TimestampedValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/TimestampedValue<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mReferenceTimeMillis:J

.field private final blacklist mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Landroid/os/TimestampedValue$1;

    invoke-direct {v0}, Landroid/os/TimestampedValue$1;-><init>()V

    sput-object v0, Landroid/os/TimestampedValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/lang/Object;)V
    .locals 0
    .param p1, "referenceTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    .line 45
    iput-object p3, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static blacklist referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "*>;",
            "Landroid/os/TimestampedValue<",
            "*>;)J"
        }
    .end annotation

    .line 93
    .local p0, "one":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    .local p1, "two":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    iget-wide v2, p1, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 121
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/TimestampedValue;

    .line 71
    .local v2, "that":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    iget-wide v3, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    iget-wide v5, v2, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    .line 72
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 68
    .end local v2    # "that":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getReferenceTimeMillis()J
    .locals 2

    .line 50
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    return-wide v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-object v0, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 77
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 82
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimestampedValue{mReferenceTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    .local p0, "this":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TT;>;"
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v0, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 128
    return-void
.end method
