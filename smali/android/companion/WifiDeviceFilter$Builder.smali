.class public final Landroid/companion/WifiDeviceFilter$Builder;
.super Ljava/lang/Object;
.source "WifiDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/WifiDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBssid:Landroid/net/MacAddress;

.field private blacklist mBssidMask:Landroid/net/MacAddress;

.field private blacklist mBuilderFieldsSet:J

.field private greylist-max-o mNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 259
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 318
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/WifiDeviceFilter;
    .locals 8

    .line 298
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 299
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 301
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 302
    iput-object v3, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 304
    :cond_0
    const-wide/16 v6, 0x2

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_1

    .line 305
    iput-object v3, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    .line 307
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 308
    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    .line 310
    :cond_2
    new-instance v0, Landroid/companion/WifiDeviceFilter;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object v3, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/WifiDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/net/MacAddress;Landroid/net/MacAddress;)V

    .line 314
    .local v0, "o":Landroid/companion/WifiDeviceFilter;
    return-object v0
.end method

.method public whitelist setBssid(Landroid/net/MacAddress;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 4
    .param p1, "value"    # Landroid/net/MacAddress;

    .line 278
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 279
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 280
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    .line 281
    return-object p0
.end method

.method public whitelist setBssidMask(Landroid/net/MacAddress;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 4
    .param p1, "value"    # Landroid/net/MacAddress;

    .line 290
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 291
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 292
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    .line 293
    return-object p0
.end method

.method public whitelist setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 4
    .param p1, "value"    # Ljava/util/regex/Pattern;

    .line 267
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 268
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 269
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 270
    return-object p0
.end method
