.class public final Landroid/service/dreams/DreamService$DreamMetadata;
.super Ljava/lang/Object;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamMetadata"
.end annotation


# instance fields
.field public final blacklist previewImage:Landroid/graphics/drawable/Drawable;

.field public final blacklist settingsActivity:Landroid/content/ComponentName;

.field public final blacklist showComplications:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "settingsActivity"    # Landroid/content/ComponentName;
    .param p2, "previewImage"    # Landroid/graphics/drawable/Drawable;
    .param p3, "showComplications"    # Z

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamMetadata;->settingsActivity:Landroid/content/ComponentName;

    .line 1506
    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamMetadata;->previewImage:Landroid/graphics/drawable/Drawable;

    .line 1507
    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    .line 1508
    return-void
.end method
