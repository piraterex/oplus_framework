.class public final Landroid/service/controls/templates/ThumbnailTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ThumbnailTemplate.java"


# static fields
.field private static final blacklist KEY_ACTIVE:Ljava/lang/String; = "key_active"

.field private static final blacklist KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "key_content_description"

.field private static final blacklist KEY_ICON:Ljava/lang/String; = "key_icon"

.field private static final blacklist TYPE:I = 0x3


# instance fields
.field private final blacklist mActive:Z

.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private final blacklist mThumbnail:Landroid/graphics/drawable/Icon;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .line 66
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v0, "key_active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    .line 68
    const-string/jumbo v0, "key_icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    .line 69
    const-string/jumbo v0, "key_content_description"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZLandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "thumbnail"    # Landroid/graphics/drawable/Icon;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;

    .line 53
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-boolean p2, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    .line 57
    iput-object p3, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    .line 58
    iput-object p4, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method private blacklist rescaleThumbnail(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 118
    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 119
    return-void
.end method


# virtual methods
.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 128
    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    const-string/jumbo v2, "key_active"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    iget-object v1, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    const-string/jumbo v2, "key_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    const-string/jumbo v2, "key_content_description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-object v0
.end method

.method public whitelist getTemplateType()I
    .locals 1

    .line 100
    const/4 v0, 0x3

    return v0
.end method

.method public whitelist getThumbnail()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist isActive()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    return v0
.end method

.method public blacklist prepareTemplateForBinder(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x10500e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    const v2, 0x10500e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 114
    .local v1, "height":I
    invoke-direct {p0, v0, v1}, Landroid/service/controls/templates/ThumbnailTemplate;->rescaleThumbnail(II)V

    .line 115
    return-void
.end method
