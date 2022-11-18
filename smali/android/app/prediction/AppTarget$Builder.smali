.class public final Landroid/app/prediction/AppTarget$Builder;
.super Ljava/lang/Object;
.source "AppTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClassName:Ljava/lang/String;

.field private final blacklist mId:Landroid/app/prediction/AppTargetId;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRank:I

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor greylist <init>(Landroid/app/prediction/AppTargetId;)V
    .locals 0
    .param p1, "id"    # Landroid/app/prediction/AppTargetId;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    .line 212
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "id"    # Landroid/app/prediction/AppTargetId;
    .param p2, "info"    # Landroid/content/pm/ShortcutInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    .line 236
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 237
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 238
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    .line 239
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "id"    # Landroid/app/prediction/AppTargetId;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    .line 224
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 225
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    .line 226
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/prediction/AppTarget;
    .locals 9

    .line 298
    iget-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Landroid/app/prediction/AppTarget;

    iget-object v2, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v3, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Landroid/app/prediction/AppTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v6, p0, Landroid/app/prediction/AppTarget$Builder;->mClassName:Ljava/lang/String;

    iget v7, p0, Landroid/app/prediction/AppTarget$Builder;->mRank:I

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/app/prediction/AppTarget;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILandroid/app/prediction/AppTarget-IA;)V

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No target is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 273
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mClassName:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public whitelist setRank(I)Landroid/app/prediction/AppTarget$Builder;
    .locals 2
    .param p1, "rank"    # I

    .line 282
    if-ltz p1, :cond_0

    .line 285
    iput p1, p0, Landroid/app/prediction/AppTarget$Builder;->mRank:I

    .line 286
    return-object p0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rank cannot be a negative value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setTarget(Landroid/content/pm/ShortcutInfo;)Landroid/app/prediction/AppTarget$Builder;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/prediction/AppTarget$Builder;->setTarget(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/prediction/AppTarget$Builder;

    .line 264
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 265
    return-object p0
.end method

.method public greylist setTarget(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/prediction/AppTarget$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    iget-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 251
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 252
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    .line 253
    return-object p0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
