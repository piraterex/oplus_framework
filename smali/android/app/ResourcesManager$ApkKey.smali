.class Landroid/app/ResourcesManager$ApkKey;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkKey"
.end annotation


# instance fields
.field public final greylist-max-o overlay:Z

.field public final greylist-max-o path:Ljava/lang/String;

.field public final greylist-max-o sharedLib:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sharedLib"    # Z
    .param p3, "overlay"    # Z

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    .line 132
    iput-boolean p2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    .line 133
    iput-boolean p3, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    instance-of v0, p1, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/ResourcesManager$ApkKey;

    .line 151
    .local v0, "other":Landroid/app/ResourcesManager$ApkKey;
    iget-object v2, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
