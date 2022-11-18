.class public final Landroid/app/AutomaticZenRule;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DISABLED:I = 0x0

.field private static final blacklist ENABLED:I = 0x1


# instance fields
.field private greylist-max-o conditionId:Landroid/net/Uri;

.field private blacklist configurationActivity:Landroid/content/ComponentName;

.field private greylist-max-o creationTime:J

.field private greylist-max-o enabled:Z

.field private greylist-max-o interruptionFilter:I

.field private blacklist mModified:Z

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mZenPolicy:Landroid/service/notification/ZenPolicy;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o owner:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 325
    new-instance v0, Landroid/app/AutomaticZenRule$1;

    invoke-direct {v0}, Landroid/app/AutomaticZenRule$1;-><init>()V

    sput-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 121
    const-class v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 122
    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 123
    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 125
    const-class v1, Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenPolicy;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "configurationActivity"    # Landroid/content/ComponentName;
    .param p4, "conditionId"    # Landroid/net/Uri;
    .param p5, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p6, "interruptionFilter"    # I
    .param p7, "enabled"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 96
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 98
    iput-object p3, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 99
    iput-object p4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 100
    iput p6, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 101
    iput-boolean p7, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 102
    iput-object p5, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "configurationActivity"    # Landroid/content/ComponentName;
    .param p4, "conditionId"    # Landroid/net/Uri;
    .param p5, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p6, "interruptionFilter"    # I
    .param p7, "enabled"    # Z
    .param p8, "creationTime"    # J

    .line 111
    invoke-direct/range {p0 .. p7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 112
    iput-wide p8, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 304
    instance-of v0, p1, Landroid/app/AutomaticZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 305
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 306
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 307
    .local v2, "other":Landroid/app/AutomaticZenRule;
    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->enabled:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->mModified:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 309
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 311
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 312
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 313
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 314
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 315
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v2, Landroid/app/AutomaticZenRule;->creationTime:J

    iget-wide v5, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 307
    :goto_0
    return v1
.end method

.method public whitelist getConditionId()Landroid/net/Uri;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getConfigurationActivity()Landroid/content/ComponentName;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getCreationTime()J
    .locals 2

    .line 192
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-wide v0
.end method

.method public whitelist getInterruptionFilter()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOwner()Landroid/content/ComponentName;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 321
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 322
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 321
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    return v0
.end method

.method public blacklist isModified()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    return v0
.end method

.method public whitelist setConditionId(Landroid/net/Uri;)V
    .locals 0
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 199
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 200
    return-void
.end method

.method public whitelist setConfigurationActivity(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 246
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 247
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 221
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 222
    return-void
.end method

.method public whitelist setInterruptionFilter(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .line 207
    iput p1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 208
    return-void
.end method

.method public blacklist setModified(Z)V
    .locals 0
    .param p1, "modified"    # Z

    .line 229
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    .line 230
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 214
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public whitelist setZenPolicy(Landroid/service/notification/ZenPolicy;)V
    .locals 1
    .param p1, "zenPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 236
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 237
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, ",interruptionFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string v1, ",pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string v1, ",conditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string v1, ",configActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string v1, ",creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string v1, ",mZenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 270
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    :goto_0
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 279
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 280
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 281
    iget-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 282
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 283
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->mModified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    return-void
.end method
