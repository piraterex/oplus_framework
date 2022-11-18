.class Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeValueEntry"
.end annotation


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValue:[B


# direct methods
.method constructor blacklist <init>(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mType:I

    .line 61
    iput-object p2, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mValue:[B

    .line 62
    return-void
.end method


# virtual methods
.method public blacklist getType()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mType:I

    return v0
.end method

.method public blacklist getValue()[B
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->mValue:[B

    return-object v0
.end method
