.class public final Landroid/location/util/identity/CallerIdentity;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# static fields
.field public static final blacklist PERMISSION_COARSE:I = 0x1

.field public static final blacklist PERMISSION_FINE:I = 0x2

.field public static final blacklist PERMISSION_NONE:I


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mListenerId:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPid:I

.field private final blacklist mUid:I


# direct methods
.method private constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "listenerId"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    .line 144
    iput p2, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    .line 145
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static blacklist forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;
    .locals 7
    .param p0, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;

    .line 67
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    return-object p0

    .line 71
    :cond_0
    new-instance v0, Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public static blacklist forTest(IILjava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/location/util/identity/CallerIdentity;->forTest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forTest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .locals 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;

    .line 58
    new-instance v6, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static blacklist fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "listenerId"    # Ljava/lang/String;

    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 101
    .local v0, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {p1, p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid package \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "listenerId"    # Ljava/lang/String;

    .line 127
    new-instance v6, Landroid/location/util/identity/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static blacklist fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    new-instance v6, Landroid/location/util/identity/CallerIdentity;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v6
.end method


# virtual methods
.method public blacklist addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Landroid/os/WorkSource;

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 196
    :cond_0
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 197
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 228
    return v0

    .line 230
    :cond_0
    instance-of v1, p1, Landroid/location/util/identity/CallerIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 231
    return v2

    .line 233
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/location/util/identity/CallerIdentity;

    .line 234
    .local v1, "that":Landroid/location/util/identity/CallerIdentity;
    iget v3, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget v4, v1, Landroid/location/util/identity/CallerIdentity;->mUid:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    iget v4, v1, Landroid/location/util/identity/CallerIdentity;->mPid:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    .line 237
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v0, v2

    .line 234
    :goto_0
    return v0
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListenerId()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPid()I
    .locals 1

    .line 157
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    return v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 152
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    return v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 162
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 244
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSystemServer()Z
    .locals 2

    .line 185
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 203
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 204
    .local v0, "length":I
    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 211
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :goto_0
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_2
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
