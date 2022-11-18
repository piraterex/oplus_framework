.class Landroid/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTag"
.end annotation


# instance fields
.field public final greylist-max-o name:Ljava/lang/String;

.field public final greylist-max-o number:I

.field public final greylist-max-o primaryFormat:I

.field public final greylist-max-o secondaryFormat:I


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    iput-object p1, p0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 1098
    iput p2, p0, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 1099
    iput p3, p0, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1100
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 1101
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    iput-object p1, p0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 1105
    iput p2, p0, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 1106
    iput p3, p0, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1107
    iput p4, p0, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 1108
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method
