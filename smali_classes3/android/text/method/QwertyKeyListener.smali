.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static greylist-max-o PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static greylist-max-o sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private greylist-max-o mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private greylist-max-o mAutoText:Z

.field private greylist-max-o mFullKeyboard:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 436
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 439
    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 57
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z
    .param p3, "fullKeyboard"    # Z

    .line 49
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 51
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 52
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 53
    return-void
.end method

.method public static whitelist getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .param p0, "autoText"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 64
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 66
    .local v0, "off":I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 70
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static whitelist getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .line 79
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 82
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private greylist-max-o getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "view"    # Landroid/view/View;

    .line 367
    sub-int v0, p3, p2

    .line 368
    .local v0, "len":I
    const/4 v1, 0x0

    .line 370
    .local v1, "changecase":Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "replacement":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 373
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "key":Ljava/lang/String;
    sub-int v6, p3, p2

    invoke-static {v5, v4, v6, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 375
    const/4 v1, 0x1

    .line 377
    if-nez v2, :cond_0

    .line 378
    return-object v3

    .line 381
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 383
    .local v5, "caps":I
    if-eqz v1, :cond_2

    .line 384
    move v6, p2

    .local v6, "j":I
    :goto_0
    if-ge v6, p3, :cond_2

    .line 385
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 384
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 392
    .end local v6    # "j":I
    :cond_2
    if-nez v5, :cond_3

    .line 393
    move-object v6, v2

    .local v6, "out":Ljava/lang/String;
    goto :goto_1

    .line 394
    .end local v6    # "out":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 395
    invoke-static {v2}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "out":Ljava/lang/String;
    goto :goto_1

    .line 396
    .end local v6    # "out":Ljava/lang/String;
    :cond_4
    if-ne v5, v0, :cond_5

    .line 397
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "out":Ljava/lang/String;
    goto :goto_1

    .line 399
    .end local v6    # "out":Ljava/lang/String;
    :cond_5
    invoke-static {v2}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .restart local v6    # "out":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v0, :cond_6

    .line 402
    invoke-static {p1, p2, v6, v4, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 403
    return-object v3

    .line 405
    :cond_6
    return-object v6
.end method

.method public static whitelist markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 5
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "original"    # Ljava/lang/String;

    .line 423
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 424
    .local v0, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 425
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "a":I
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 429
    .local v1, "len":I
    new-array v3, v1, [C

    .line 430
    .local v3, "orig":[C
    invoke-virtual {p3, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 432
    new-instance v2, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v2, v3}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v4, 0x21

    invoke-interface {p0, v2, p1, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 434
    return-void
.end method

.method private greylist-max-o showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "c"    # C
    .param p4, "insert"    # Z
    .param p5, "count"    # I

    .line 503
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    .local v0, "set":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 505
    const/4 v1, 0x0

    return v1

    .line 508
    :cond_0
    const/4 v7, 0x1

    if-ne p5, v7, :cond_1

    .line 509
    new-instance v8, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    .line 510
    invoke-virtual {v8}, Landroid/text/method/CharacterPickerDialog;->show()V

    .line 513
    :cond_1
    return v7
.end method

.method private static greylist-max-o toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getInputType()I
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 92
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    const/4 v0, 0x0

    .line 94
    .local v0, "pref":I
    if-eqz v8, :cond_0

    .line 95
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v0

    move v11, v0

    goto :goto_0

    .line 94
    :cond_0
    move v11, v0

    .line 99
    .end local v0    # "pref":I
    .local v11, "pref":I
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 100
    .local v0, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 102
    .local v1, "b":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 103
    .local v2, "selStart":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105
    .local v3, "selEnd":I
    const/4 v12, 0x0

    if-ltz v2, :cond_2

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move v13, v2

    move v14, v3

    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    move v3, v12

    move v2, v12

    .line 107
    invoke-static {v9, v12, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v13, v2

    move v14, v3

    .line 111
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "selStart":I
    .end local v3    # "selEnd":I
    .local v13, "selStart":I
    .local v14, "selEnd":I
    :goto_2
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 112
    .local v15, "activeStart":I
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 116
    .local v6, "activeEnd":I
    invoke-static {v9, v10}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    .line 118
    .local v5, "i":I
    iget-boolean v0, v7, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    const/16 v16, 0x1

    if-nez v0, :cond_7

    .line 119
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 120
    .local v0, "count":I
    if-lez v0, :cond_6

    if-ne v13, v14, :cond_6

    if-lez v13, :cond_6

    .line 121
    add-int/lit8 v1, v13, -0x1

    invoke-interface {v9, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 123
    .local v4, "c":C
    if-eq v4, v5, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ne v4, v1, :cond_3

    goto :goto_3

    :cond_3
    move v12, v5

    move v10, v6

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 124
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v18, v4

    .end local v4    # "c":C
    .local v18, "c":C
    move v12, v5

    .end local v5    # "i":I
    .local v12, "i":I
    move/from16 v5, v17

    move v10, v6

    .end local v6    # "activeEnd":I
    .local v10, "activeEnd":I
    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 126
    return v16

    .line 123
    .end local v10    # "activeEnd":I
    .end local v12    # "i":I
    .end local v18    # "c":C
    .restart local v4    # "c":C
    .restart local v5    # "i":I
    .restart local v6    # "activeEnd":I
    :cond_5
    move/from16 v18, v4

    move v12, v5

    move v10, v6

    .end local v4    # "c":C
    .end local v5    # "i":I
    .end local v6    # "activeEnd":I
    .restart local v10    # "activeEnd":I
    .restart local v12    # "i":I
    .restart local v18    # "c":C
    goto :goto_4

    .line 120
    .end local v10    # "activeEnd":I
    .end local v12    # "i":I
    .end local v18    # "c":C
    .restart local v5    # "i":I
    .restart local v6    # "activeEnd":I
    :cond_6
    move v12, v5

    move v10, v6

    .end local v5    # "i":I
    .end local v6    # "activeEnd":I
    .restart local v10    # "activeEnd":I
    .restart local v12    # "i":I
    goto :goto_4

    .line 118
    .end local v0    # "count":I
    .end local v10    # "activeEnd":I
    .end local v12    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "activeEnd":I
    :cond_7
    move v12, v5

    move v10, v6

    .line 132
    .end local v5    # "i":I
    .end local v6    # "activeEnd":I
    .restart local v10    # "activeEnd":I
    .restart local v12    # "i":I
    :cond_8
    :goto_4
    const v0, 0xef01

    if-ne v12, v0, :cond_a

    .line 133
    if-eqz v8, :cond_9

    .line 134
    const v4, 0xef01

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 137
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 138
    return v16

    .line 141
    :cond_a
    const v0, 0xef00

    if-ne v12, v0, :cond_e

    .line 144
    const/16 v0, 0x10

    if-ne v13, v14, :cond_b

    .line 145
    move v1, v14

    .line 147
    .local v1, "start":I
    :goto_5
    if-lez v1, :cond_c

    sub-int v2, v14, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_c

    add-int/lit8 v2, v1, -0x1

    .line 148
    invoke-interface {v9, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_c

    .line 149
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 152
    .end local v1    # "start":I
    :cond_b
    move v1, v13

    .line 155
    .restart local v1    # "start":I
    :cond_c
    const/4 v2, -0x1

    .line 157
    .local v2, "ch":I
    :try_start_0
    invoke-static {v9, v1, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "hex":Ljava/lang/String;
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .end local v3    # "hex":Ljava/lang/String;
    goto :goto_6

    .line 159
    :catch_0
    move-exception v0

    :goto_6
    nop

    .line 161
    if-ltz v2, :cond_d

    .line 162
    move v13, v1

    .line 163
    invoke-static {v9, v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 164
    move v5, v2

    .end local v12    # "i":I
    .restart local v5    # "i":I
    goto :goto_7

    .line 166
    .end local v5    # "i":I
    .restart local v12    # "i":I
    :cond_d
    const/4 v5, 0x0

    .end local v12    # "i":I
    .restart local v5    # "i":I
    goto :goto_7

    .line 141
    .end local v1    # "start":I
    .end local v2    # "ch":I
    .end local v5    # "i":I
    .restart local v12    # "i":I
    :cond_e
    move v5, v12

    .line 170
    .end local v12    # "i":I
    .restart local v5    # "i":I
    :goto_7
    const/16 v0, 0xa

    if-eqz v5, :cond_24

    .line 171
    const/4 v3, 0x0

    .line 173
    .local v3, "dead":Z
    const/high16 v4, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 174
    const/4 v3, 0x1

    .line 175
    const v4, 0x7fffffff

    and-int/2addr v5, v4

    .line 178
    :cond_f
    if-ne v15, v13, :cond_11

    if-ne v10, v14, :cond_11

    .line 179
    const/4 v4, 0x0

    .line 181
    .local v4, "replace":Z
    sub-int v6, v14, v13

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_10

    .line 182
    invoke-interface {v9, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 183
    .local v6, "accent":C
    invoke-static {v6, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v12

    .line 185
    .local v12, "composed":I
    if-eqz v12, :cond_10

    .line 186
    move v5, v12

    .line 187
    const/4 v4, 0x1

    .line 188
    const/4 v3, 0x0

    .line 192
    .end local v6    # "accent":C
    .end local v12    # "composed":I
    :cond_10
    if-nez v4, :cond_11

    .line 193
    invoke-static {v9, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    sget-object v6, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 195
    move v13, v14

    .line 199
    .end local v4    # "replace":Z
    :cond_11
    and-int/lit8 v4, v11, 0x1

    if-eqz v4, :cond_14

    .line 200
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v7, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 201
    invoke-static {v4, v9, v13}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 202
    sget-object v4, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v9, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 203
    .local v4, "where":I
    sget-object v6, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v9, v6}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 205
    .local v6, "flags":I
    if-ne v4, v13, :cond_12

    shr-int/lit8 v12, v6, 0x10

    const v17, 0xffff

    and-int v12, v12, v17

    if-ne v12, v5, :cond_12

    .line 206
    sget-object v12, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v9, v12}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_8

    .line 208
    :cond_12
    shl-int/lit8 v6, v5, 0x10

    .line 209
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    .line 211
    if-nez v13, :cond_13

    .line 212
    sget-object v12, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    or-int/lit8 v1, v6, 0x11

    const/4 v2, 0x0

    invoke-interface {v9, v12, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 215
    :cond_13
    sget-object v1, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v2, v13, -0x1

    or-int/lit8 v12, v6, 0x21

    invoke-interface {v9, v1, v2, v13, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 222
    .end local v4    # "where":I
    .end local v6    # "flags":I
    :cond_14
    :goto_8
    if-eq v13, v14, :cond_15

    .line 223
    invoke-static {v9, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 225
    :cond_15
    sget-object v1, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v2, 0x11

    invoke-interface {v9, v1, v13, v13, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    int-to-char v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v13, v14, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 230
    sget-object v1, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v9, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 231
    .local v1, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 233
    .end local v14    # "selEnd":I
    .local v2, "selEnd":I
    if-ge v1, v2, :cond_16

    .line 234
    sget-object v4, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    invoke-interface {v9, v4, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    if-eqz v3, :cond_16

    .line 239
    invoke-static {v9, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 240
    sget-object v4, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v4, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 245
    :cond_16
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 250
    and-int/lit8 v4, v11, 0x2

    const/16 v6, 0x16

    const/16 v12, 0x20

    if-eqz v4, :cond_1e

    iget-boolean v4, v7, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v4, :cond_1e

    if-eq v5, v12, :cond_18

    const/16 v4, 0x9

    if-eq v5, v4, :cond_18

    if-eq v5, v0, :cond_18

    const/16 v0, 0x2c

    if-eq v5, v0, :cond_18

    const/16 v0, 0x2e

    if-eq v5, v0, :cond_18

    const/16 v0, 0x21

    if-eq v5, v0, :cond_18

    const/16 v0, 0x3f

    if-eq v5, v0, :cond_18

    const/16 v0, 0x22

    if-eq v5, v0, :cond_18

    .line 253
    invoke-static {v5}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-ne v0, v6, :cond_17

    goto :goto_9

    :cond_17
    move/from16 v19, v2

    goto :goto_d

    :cond_18
    :goto_9
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 254
    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 258
    move v0, v1

    .local v0, "x":I
    :goto_a
    if-lez v0, :cond_1a

    .line 259
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v9, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 260
    .local v4, "c":C
    const/16 v14, 0x27

    if-eq v4, v14, :cond_19

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_19

    .line 261
    goto :goto_b

    .line 258
    .end local v4    # "c":C
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 265
    :cond_1a
    :goto_b
    invoke-direct {v7, v9, v0, v1, v8}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "rep":Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 268
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v14

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v12, 0x0

    invoke-interface {v9, v12, v14, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 270
    .local v6, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v12, 0x0

    .local v12, "a":I
    :goto_c
    array-length v14, v6

    if-ge v12, v14, :cond_1b

    .line 271
    aget-object v14, v6, v12

    invoke-interface {v9, v14}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 273
    .end local v12    # "a":I
    :cond_1b
    sub-int v12, v1, v0

    new-array v12, v12, [C

    .line 274
    .local v12, "orig":[C
    const/4 v14, 0x0

    invoke-static {v9, v0, v1, v12, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 276
    new-instance v14, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v14, v12}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    move/from16 v19, v2

    const/16 v2, 0x21

    .end local v2    # "selEnd":I
    .local v19, "selEnd":I
    invoke-interface {v9, v14, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 278
    invoke-interface {v9, v0, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_d

    .line 267
    .end local v6    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v12    # "orig":[C
    .end local v19    # "selEnd":I
    .restart local v2    # "selEnd":I
    :cond_1c
    move/from16 v19, v2

    .end local v2    # "selEnd":I
    .restart local v19    # "selEnd":I
    goto :goto_d

    .line 254
    .end local v0    # "x":I
    .end local v4    # "rep":Ljava/lang/String;
    .end local v19    # "selEnd":I
    .restart local v2    # "selEnd":I
    :cond_1d
    move/from16 v19, v2

    .end local v2    # "selEnd":I
    .restart local v19    # "selEnd":I
    goto :goto_d

    .line 250
    .end local v19    # "selEnd":I
    .restart local v2    # "selEnd":I
    :cond_1e
    move/from16 v19, v2

    .line 284
    .end local v2    # "selEnd":I
    .restart local v19    # "selEnd":I
    :goto_d
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_22

    iget-boolean v0, v7, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v0, :cond_22

    .line 285
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 286
    .end local v19    # "selEnd":I
    .restart local v2    # "selEnd":I
    add-int/lit8 v0, v2, -0x3

    if-ltz v0, :cond_23

    .line 287
    add-int/lit8 v0, v2, -0x1

    invoke-interface {v9, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v4, 0x20

    if-ne v0, v4, :cond_23

    add-int/lit8 v0, v2, -0x2

    .line 288
    invoke-interface {v9, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_23

    .line 289
    add-int/lit8 v0, v2, -0x3

    invoke-interface {v9, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 291
    .local v0, "c":C
    add-int/lit8 v4, v2, -0x3

    .local v4, "j":I
    :goto_e
    if-lez v4, :cond_20

    .line 292
    const/16 v6, 0x22

    if-eq v0, v6, :cond_1f

    .line 293
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v12, 0x16

    if-ne v6, v12, :cond_20

    goto :goto_f

    .line 292
    :cond_1f
    const/16 v12, 0x16

    .line 294
    :goto_f
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v9, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 291
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 300
    .end local v4    # "j":I
    :cond_20
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 301
    :cond_21
    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v6, v2, -0x1

    const-string v12, "."

    invoke-interface {v9, v4, v6, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_10

    .line 307
    .end local v0    # "c":C
    .end local v2    # "selEnd":I
    .restart local v19    # "selEnd":I
    :cond_22
    move/from16 v2, v19

    .end local v19    # "selEnd":I
    .restart local v2    # "selEnd":I
    :cond_23
    :goto_10
    return v16

    .line 308
    .end local v1    # "oldStart":I
    .end local v2    # "selEnd":I
    .end local v3    # "dead":Z
    .restart local v14    # "selEnd":I
    :cond_24
    const/16 v1, 0x43

    move/from16 v2, p3

    if-ne v2, v1, :cond_2a

    .line 309
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x2

    move-object/from16 v3, p4

    move v4, v10

    .end local v10    # "activeEnd":I
    .local v4, "activeEnd":I
    invoke-virtual {v3, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_11

    .end local v4    # "activeEnd":I
    .restart local v10    # "activeEnd":I
    :cond_25
    move-object/from16 v3, p4

    move v4, v10

    .end local v10    # "activeEnd":I
    .restart local v4    # "activeEnd":I
    :goto_11
    if-ne v13, v14, :cond_2b

    .line 313
    const/4 v1, 0x1

    .line 320
    .local v1, "consider":I
    sget-object v6, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v9, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v13, :cond_26

    .line 321
    add-int/lit8 v6, v13, -0x1

    invoke-interface {v9, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-eq v6, v0, :cond_26

    .line 322
    const/4 v1, 0x2

    .line 325
    :cond_26
    sub-int v0, v13, v1

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {v9, v0, v13, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 328
    .local v0, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    array-length v6, v0

    if-lez v6, :cond_29

    .line 329
    const/4 v6, 0x0

    aget-object v10, v0, v6

    invoke-interface {v9, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 330
    .local v10, "st":I
    aget-object v12, v0, v6

    invoke-interface {v9, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 331
    .local v12, "en":I
    move/from16 v19, v1

    .end local v1    # "consider":I
    .local v19, "consider":I
    new-instance v1, Ljava/lang/String;

    aget-object v20, v0, v6

    invoke-static/range {v20 .. v20}, Landroid/text/method/QwertyKeyListener$Replaced;->-$$Nest$fgetmText(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    .line 333
    .local v1, "old":Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 339
    if-lt v13, v12, :cond_28

    .line 340
    sget-object v6, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v0, 0x22

    .end local v0    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .local v20, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    invoke-interface {v9, v6, v12, v12, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 342
    invoke-interface {v9, v10, v12, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 344
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 345
    .end local v12    # "en":I
    .local v0, "en":I
    add-int/lit8 v6, v0, -0x1

    if-ltz v6, :cond_27

    .line 346
    sget-object v6, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    add-int/lit8 v12, v0, -0x1

    move-object/from16 v17, v1

    const/16 v1, 0x21

    .end local v1    # "old":Ljava/lang/String;
    .local v17, "old":Ljava/lang/String;
    invoke-interface {v9, v6, v12, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_12

    .line 350
    .end local v17    # "old":Ljava/lang/String;
    .restart local v1    # "old":Ljava/lang/String;
    :cond_27
    move-object/from16 v17, v1

    .end local v1    # "old":Ljava/lang/String;
    .restart local v17    # "old":Ljava/lang/String;
    sget-object v1, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v9, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 352
    :goto_12
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 358
    return v16

    .line 354
    .end local v17    # "old":Ljava/lang/String;
    .end local v20    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .local v0, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .restart local v1    # "old":Ljava/lang/String;
    .restart local v12    # "en":I
    :cond_28
    move-object/from16 v20, v0

    .end local v0    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .restart local v20    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 355
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 328
    .end local v10    # "st":I
    .end local v12    # "en":I
    .end local v19    # "consider":I
    .end local v20    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .restart local v0    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .local v1, "consider":I
    :cond_29
    move-object/from16 v20, v0

    move/from16 v19, v1

    .end local v0    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v1    # "consider":I
    .restart local v19    # "consider":I
    .restart local v20    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    goto :goto_13

    .line 308
    .end local v4    # "activeEnd":I
    .end local v19    # "consider":I
    .end local v20    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .local v10, "activeEnd":I
    :cond_2a
    move-object/from16 v3, p4

    move v4, v10

    .line 362
    .end local v10    # "activeEnd":I
    .restart local v4    # "activeEnd":I
    :cond_2b
    :goto_13
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
