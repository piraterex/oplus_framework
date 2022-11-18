.class public final Landroid/content/AttributionSource;
.super Ljava/lang/Object;
.source "AttributionSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AttributionSource$Builder;,
        Landroid/content/AttributionSource$ScopedParcelState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.AttributionSource"

.field private static final blacklist sDefaultToken:Landroid/os/Binder;


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mNextCached:Landroid/content/AttributionSource;

.field private blacklist mRenouncedPermissionsCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;
    .locals 0

    iget-object p0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDefaultToken()Landroid/os/Binder;
    .locals 1

    sget-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Landroid/os/Binder;

    const-string v1, "android.content.AttributionSource"

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    .line 516
    new-instance v0, Landroid/content/AttributionSource$1;

    invoke-direct {v0}, Landroid/content/AttributionSource$1;-><init>()V

    sput-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 103
    sget-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;

    .line 110
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "next"    # Landroid/content/AttributionSource;

    .line 118
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 119
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "renouncedPermissions"    # [Ljava/lang/String;
    .param p6, "next"    # Landroid/content/AttributionSource;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 145
    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 146
    iput-object p4, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 147
    iput-object p2, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 148
    iput-object p3, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 149
    iput-object p5, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 150
    const/4 v1, 0x0

    if-eqz p6, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/AttributionSourceState;

    iget-object v3, p6, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    aput-object v3, v2, v1

    goto :goto_0

    .line 151
    :cond_0
    new-array v2, v1, [Landroid/content/AttributionSourceState;

    :goto_0
    iput-object v2, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/content/AttributionSource;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "next"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .line 126
    .local p4, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 126
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 128
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "renouncedPermissions"    # [Ljava/lang/String;
    .param p5, "next"    # Landroid/content/AttributionSource;

    .line 138
    sget-object v4, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V
    .locals 7
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "next"    # Landroid/content/AttributionSource;

    .line 132
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v0, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v5, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 132
    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 134
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/AttributionSourceState;)V
    .locals 0
    .param p1, "attributionSourceState"    # Landroid/content/AttributionSourceState;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 165
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 155
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    invoke-direct {p0, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 159
    invoke-direct {p0}, Landroid/content/AttributionSource;->enforceCallingUidAndPid()V

    .line 160
    return-void
.end method

.method private blacklist checkCallingPid()Z
    .locals 3

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 329
    .local v0, "callingPid":I
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    if-eq v0, v1, :cond_0

    .line 330
    const/4 v1, 0x0

    return v1

    .line 332
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist enforceCallingUidAndPid()V
    .locals 0

    .line 269
    invoke-virtual {p0}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 270
    invoke-virtual {p0}, Landroid/content/AttributionSource;->enforceCallingPid()V

    .line 271
    return-void
.end method

.method public static whitelist myAttributionSource()Landroid/content/AttributionSource;
    .locals 5

    .line 214
    invoke-static {}, Landroid/app/ActivityThread;->currentAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 215
    .local v0, "globalSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_0

    .line 216
    return-object v0

    .line 219
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 220
    .local v1, "uid":I
    if-nez v1, :cond_1

    .line 221
    const/16 v1, 0x3e8

    .line 224
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/AttributionSource$Builder;

    invoke-direct {v2, v1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 225
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object v2

    .line 227
    :catch_0
    move-exception v2

    .line 230
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to resolve AttributionSource"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;
    .locals 1

    .line 192
    new-instance v0, Landroid/content/AttributionSource$ScopedParcelState;

    invoke-direct {v0, p0}, Landroid/content/AttributionSource$ScopedParcelState;-><init>(Landroid/content/AttributionSource;)V

    return-object v0
.end method

.method public blacklist asState()Landroid/content/AttributionSourceState;
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    return-object v0
.end method

.method public whitelist checkCallingUid()Z
    .locals 2

    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 299
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    if-eq v0, v1, :cond_0

    .line 302
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceCallingPid()V
    .locals 3

    .line 316
    invoke-direct {p0}, Landroid/content/AttributionSource;->checkCallingPid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t match source pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enforceCallingUid()V
    .locals 3

    .line 282
    invoke-virtual {p0}, Landroid/content/AttributionSource;->checkCallingUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t match source uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 481
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 482
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 483
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/content/AttributionSource;

    .line 484
    .local v2, "that":Landroid/content/AttributionSource;
    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v3, v3, Landroid/content/AttributionSourceState;->uid:I

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v4, v4, Landroid/content/AttributionSourceState;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 485
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 487
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 489
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 491
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 484
    :goto_0
    return v0

    .line 482
    .end local v2    # "that":Landroid/content/AttributionSource;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNext()Landroid/content/AttributionSource;
    .locals 3

    .line 472
    iget-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 474
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iput-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public blacklist getNextAttributionTag()Ljava/lang/String;
    .locals 2

    .line 384
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object v0

    .line 388
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextPackageName()Ljava/lang/String;
    .locals 2

    .line 370
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 372
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextToken()Landroid/os/IBinder;
    .locals 2

    .line 398
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-object v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextUid()I
    .locals 2

    .line 357
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    return v0

    .line 361
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRenouncedPermissions()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    .line 435
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    .line 465
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 442
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 498
    const/4 v0, 0x1

    .line 499
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    add-int/2addr v1, v2

    .line 500
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 501
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 502
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 503
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 504
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 505
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist isTrusted(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 413
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-class v0, Landroid/permission/PermissionManager;

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 415
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 337
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributionSource { uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 345
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    return-object v0

    .line 348
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 7
    .param p1, "next"    # Landroid/content/AttributionSource;

    .line 169
    new-instance v6, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    return-object v6
.end method

.method public blacklist withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 175
    new-instance v6, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 175
    return-object v6
.end method

.method public blacklist withToken(Landroid/os/Binder;)Landroid/content/AttributionSource;
    .locals 8
    .param p1, "token"    # Landroid/os/Binder;

    .line 181
    new-instance v7, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v5, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 181
    return-object v7
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 510
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {v0, p1, p2}, Landroid/content/AttributionSourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    return-void
.end method
