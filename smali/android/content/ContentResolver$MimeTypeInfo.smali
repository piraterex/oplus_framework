.class public final Landroid/content/ContentResolver$MimeTypeInfo;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MimeTypeInfo"
.end annotation


# instance fields
.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 4033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4034
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 4035
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mLabel:Ljava/lang/CharSequence;

    .line 4036
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 4037
    return-void
.end method


# virtual methods
.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 4065
    iget-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 4047
    iget-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 4056
    iget-object v0, p0, Landroid/content/ContentResolver$MimeTypeInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
