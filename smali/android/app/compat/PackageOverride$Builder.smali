.class public final Landroid/app/compat/PackageOverride$Builder;
.super Ljava/lang/Object;
.source "PackageOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/compat/PackageOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mMaxVersionCode:J

.field private blacklist mMinVersionCode:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    .line 171
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/compat/PackageOverride;
    .locals 8

    .line 219
    iget-wide v1, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    iget-wide v3, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 223
    new-instance v7, Landroid/app/compat/PackageOverride;

    iget-boolean v5, p0, Landroid/app/compat/PackageOverride$Builder;->mEnabled:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/compat/PackageOverride;-><init>(JJZLandroid/app/compat/PackageOverride-IA;)V

    return-object v7

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minVersionCode must not be larger than maxVersionCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 207
    iput-boolean p1, p0, Landroid/app/compat/PackageOverride$Builder;->mEnabled:Z

    .line 208
    return-object p0
.end method

.method public whitelist setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    .locals 0
    .param p1, "maxVersionCode"    # J

    .line 196
    iput-wide p1, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    .line 197
    return-object p0
.end method

.method public whitelist setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    .locals 0
    .param p1, "minVersionCode"    # J

    .line 183
    iput-wide p1, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    .line 184
    return-object p0
.end method
