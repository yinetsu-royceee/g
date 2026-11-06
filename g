# classes.dex

.class public Lcom/cmyksoft/retroworld/Enemy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOSS_8_ROTATE_HEAD_NUMBER:[[I

.field public static final BOSS_8_ROTATE_STEP_NUMBER:[[I

.field public static final BOSS_8_SWING_HEAD_NUMBER:[I

.field public static final BOSS_9_STICK_FRAME:[I

.field public static final FRAME_KIND_ELECTRO:[B

.field public static idCounter:I


# instance fields
.field public additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

.field public checkLadder:Z

.field public damage:I

.field public damageTime:D

.field public directionIsRight:Z

.field public dx:D

.field public dxOriginal:D

.field public dy:D

.field public float1:D

.field public float2:D

.field public float3:D

.field public float4:D

.field public float5:D

.field public game:Lcom/cmyksoft/retroworld/Game;

.field public height:D

.field public heightOriginal:D

.field public id:I

.field public inDamage:Z

.field public inHill:Z

.field public inJump:Z

.field public inMove:Z

.field public invulnerable:Z

.field public isHeadShotEnabled:Z

.field public isMany:Z

.field public jumpStartSpeed:D

.field public kind:I

.field public life:I

.field public makeJump:Z

.field public moveKind:I

.field public needDraw:Z

.field public oldX:D

.field public oldY:D

.field public param1:I

.field public param2:I

.field public param3:I

.field public param4:I

.field public param5:I

.field public sizeInZone:Z

.field public width2:D

.field public width2Original:D

.field public width4:D

.field public windDirection:B

.field public x:D

.field public y:D


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_4a

    sput-object v1, Lcom/cmyksoft/retroworld/Enemy;->FRAME_KIND_ELECTRO:[B

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v6, 0x16

    const/16 v7, 0xc

    filled-new-array {v3, v4, v5, v6, v7}, [I

    move-result-object v8

    aput-object v8, v2, v3

    filled-new-array {v7, v6, v5, v4, v3}, [I

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    sput-object v2, Lcom/cmyksoft/retroworld/Enemy;->BOSS_8_ROTATE_STEP_NUMBER:[[I

    new-array v1, v1, [[I

    const/16 v2, 0x8

    const/4 v5, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x4

    filled-new-array {v2, v5, v0, v7, v8}, [I

    move-result-object v9

    aput-object v9, v1, v3

    filled-new-array {v8, v7, v0, v5, v2}, [I

    move-result-object v0

    aput-object v0, v1, v6

    sput-object v1, Lcom/cmyksoft/retroworld/Enemy;->BOSS_8_ROTATE_HEAD_NUMBER:[[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/cmyksoft/retroworld/Enemy;->BOSS_8_SWING_HEAD_NUMBER:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/cmyksoft/retroworld/Enemy;->BOSS_9_STICK_FRAME:[I

    return-void

    nop

    :array_4a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_52
    .array-data 4
        0x4
        0x4
        0x3
        0x2
        0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_72
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x4
        0x3
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/cmyksoft/retroworld/Enemy;->idCounter:I

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    rem-int/2addr v0, v1

    sput v0, Lcom/cmyksoft/retroworld/Enemy;->idCounter:I

    iput v0, p0, Lcom/cmyksoft/retroworld/Enemy;->id:I

    iput-object p1, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iput p2, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-eqz p5, :cond_20

    mul-int/lit8 p3, p3, 0x20

    add-int/lit8 p3, p3, 0x10

    int-to-double p1, p3

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-int/lit8 p4, p4, 0x1

    mul-int/lit8 p4, p4, 0x20

    goto :goto_23

    :cond_20
    int-to-double p1, p3

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    :goto_23
    int-to-double p1, p4

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    invoke-virtual {p0}, Lcom/cmyksoft/retroworld/Enemy;->init()V

    return-void
.end method

.method public static resetClass()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/cmyksoft/retroworld/Enemy;->idCounter:I

    return-void
.end method


# virtual methods
.method public checkFireCollizionCenterCenterFromCustomPoint(DDDDZ)Z
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->fire:Lcom/cmyksoft/retroworld/Fire;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x10

    if-ge v3, v4, :cond_84

    iget-object v4, v1, Lcom/cmyksoft/retroworld/Fire;->kind:[B

    aget-byte v4, v4, v3

    if-lez v4, :cond_81

    iget-object v5, v1, Lcom/cmyksoft/retroworld/Fire;->x:[D

    aget-wide v6, v5, v3

    sub-double/2addr v6, p5

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v7, v1, Lcom/cmyksoft/retroworld/Fire;->width2:[D

    aget-wide v8, v7, v3

    add-double v7, p1, v8

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_81

    iget-object v5, v1, Lcom/cmyksoft/retroworld/Fire;->y:[D

    aget-wide v6, v5, v3

    sub-double v6, v6, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v7, v1, Lcom/cmyksoft/retroworld/Fire;->height2:[D

    aget-wide v8, v7, v3

    add-double v7, p3, v8

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_81

    const/4 v2, 0x1

    if-eqz p9, :cond_46

    iget-object v5, v1, Lcom/cmyksoft/retroworld/Fire;->directionIsRight:[Z

    aget-boolean v5, v5, v3

    sget-object v6, Lcom/cmyksoft/retroworld/Fire;->DAMAGE:[I

    aget v6, v6, v4

    invoke-virtual {p0, v2, v5, v6}, Lcom/cmyksoft/retroworld/Enemy;->damage(ZZI)V

    :cond_46
    const/4 v5, 0x4

    if-ne v4, v5, :cond_4b

    if-nez p9, :cond_80

    :cond_4b
    iget-object v5, v1, Lcom/cmyksoft/retroworld/Fire;->kind:[B

    aget-byte v6, v5, v3

    neg-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    iget-object v5, v1, Lcom/cmyksoft/retroworld/Fire;->dy:[D

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    aput-wide v6, v5, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_63

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Fire;->dx:[D

    const-wide/high16 v4, 0x4010000000000000L  # 4.0

    aput-wide v4, v1, v3

    goto :goto_80

    :cond_63
    iget-object v4, v1, Lcom/cmyksoft/retroworld/Fire;->directionIsRight:[Z

    aget-boolean v5, v4, v3

    xor-int/2addr v5, v2

    aput-boolean v5, v4, v3

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Fire;->dx:[D

    if-eqz v5, :cond_71

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    goto :goto_73

    :cond_71
    const-wide/high16 v4, -0x4000000000000000L  # -2.0

    :goto_73
    aput-wide v4, v1, v3

    if-nez p9, :cond_80

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v3, v1, Lcom/cmyksoft/retroworld/Sound;->sndMirror:I

    invoke-virtual {v1, v3}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    :cond_80
    :goto_80
    return v2

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_84
    return v2
.end method

.method public checkFireCollizionZone(IIIIZZ)Z
    .registers 28

    move-object/from16 v0, p0

    if-eqz p5, :cond_b

    move/from16 v1, p3

    neg-int v1, v1

    move/from16 v2, p1

    neg-int v2, v2

    goto :goto_14

    :cond_b
    move/from16 v2, p1

    move/from16 v1, p3

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    :goto_14
    int-to-double v3, v1

    iget-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double/2addr v3, v5

    int-to-double v1, v2

    add-double/2addr v1, v5

    move/from16 v5, p2

    int-to-double v5, v5

    iget-wide v7, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    add-double/2addr v5, v7

    move/from16 v9, p4

    int-to-double v9, v9

    add-double/2addr v9, v7

    iget-object v7, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v7, v7, Lcom/cmyksoft/retroworld/Game;->fire:Lcom/cmyksoft/retroworld/Fire;

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_2a
    const/16 v12, 0x10

    if-ge v11, v12, :cond_a8

    iget-object v12, v7, Lcom/cmyksoft/retroworld/Fire;->kind:[B

    aget-byte v12, v12, v11

    if-lez v12, :cond_a5

    iget-object v13, v7, Lcom/cmyksoft/retroworld/Fire;->x:[D

    aget-wide v14, v13, v11

    iget-object v13, v7, Lcom/cmyksoft/retroworld/Fire;->width2:[D

    aget-wide v16, v13, v11

    sub-double v18, v14, v16

    cmpg-double v13, v18, v1

    if-gtz v13, :cond_a5

    add-double v14, v14, v16

    cmpl-double v13, v14, v3

    if-ltz v13, :cond_a5

    iget-object v13, v7, Lcom/cmyksoft/retroworld/Fire;->y:[D

    aget-wide v14, v13, v11

    iget-object v13, v7, Lcom/cmyksoft/retroworld/Fire;->height2:[D

    aget-wide v16, v13, v11

    sub-double v18, v14, v16

    cmpg-double v13, v18, v9

    if-gtz v13, :cond_a5

    add-double v14, v14, v16

    cmpl-double v13, v14, v5

    if-ltz v13, :cond_a5

    const/4 v1, 0x1

    if-eqz p6, :cond_6a

    iget-object v2, v7, Lcom/cmyksoft/retroworld/Fire;->directionIsRight:[Z

    aget-boolean v2, v2, v11

    sget-object v3, Lcom/cmyksoft/retroworld/Fire;->DAMAGE:[I

    aget v3, v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmyksoft/retroworld/Enemy;->damage(ZZI)V

    :cond_6a
    const/4 v2, 0x4

    if-ne v12, v2, :cond_6f

    if-nez p6, :cond_a4

    :cond_6f
    iget-object v2, v7, Lcom/cmyksoft/retroworld/Fire;->kind:[B

    aget-byte v3, v2, v11

    neg-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    iget-object v2, v7, Lcom/cmyksoft/retroworld/Fire;->dy:[D

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    aput-wide v3, v2, v11

    const/4 v2, 0x3

    if-ne v12, v2, :cond_87

    iget-object v2, v7, Lcom/cmyksoft/retroworld/Fire;->dx:[D

    const-wide/high16 v3, 0x4010000000000000L  # 4.0

    aput-wide v3, v2, v11

    goto :goto_99

    :cond_87
    iget-object v2, v7, Lcom/cmyksoft/retroworld/Fire;->directionIsRight:[Z

    aget-boolean v3, v2, v11

    xor-int/2addr v3, v1

    aput-boolean v3, v2, v11

    iget-object v2, v7, Lcom/cmyksoft/retroworld/Fire;->dx:[D

    if-eqz v3, :cond_95

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    goto :goto_97

    :cond_95
    const-wide/high16 v3, -0x4000000000000000L  # -2.0

    :goto_97
    aput-wide v3, v2, v11

    :goto_99
    if-nez p6, :cond_a4

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v3, v2, Lcom/cmyksoft/retroworld/Sound;->sndMirror:I

    invoke-virtual {v2, v3}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    :cond_a4
    return v1

    :cond_a5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    :cond_a8
    return v8
.end method

.method public checkGround(Lcom/cmyksoft/retroworld/Game;)Z
    .registers 27

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    iget-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iget-wide v12, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v14, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    cmpl-double v1, v12, v14

    if-ltz v1, :cond_1a

    const/4 v12, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v12, 0x0

    :goto_1b
    iget-boolean v13, v0, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    iget-wide v14, v0, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    move/from16 v22, v13

    move-wide/from16 v23, v14

    iget-wide v13, v0, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    move-wide/from16 v16, v13

    const/16 v18, 0x0

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->checkLadder:Z

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v13, v22

    move-wide/from16 v14, v23

    invoke-virtual/range {v1 .. v19}, Lcom/cmyksoft/retroworld/Game;->checkGround(DDDDDZZDDZZ)Z

    move-result v1

    if-eqz v1, :cond_45

    move-object/from16 v1, p1

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Game;->returnY:D

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v1, v1

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    return v20

    :cond_45
    return v21
.end method

.method public checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/cmyksoft/retroworld/Player;->inTeleport:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5c

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-boolean v2, v2, Lcom/cmyksoft/retroworld/Game;->isGameOver:Z

    if-eqz v2, :cond_10

    goto :goto_5c

    :cond_10
    if-eqz p6, :cond_19

    move/from16 v2, p4

    neg-int v2, v2

    move/from16 v4, p2

    neg-int v4, v4

    goto :goto_20

    :cond_19
    move/from16 v4, p2

    move/from16 v2, p4

    move v15, v4

    move v4, v2

    move v2, v15

    :goto_20
    int-to-double v5, v2

    iget-wide v7, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double/2addr v5, v7

    int-to-double v9, v4

    add-double/2addr v9, v7

    iget-wide v7, v1, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v11, v1, Lcom/cmyksoft/retroworld/Player;->width2:D

    sub-double v13, v7, v11

    cmpg-double v2, v13, v9

    if-gtz v2, :cond_5c

    add-double/2addr v7, v11

    cmpl-double v2, v7, v5

    if-ltz v2, :cond_5c

    iget-wide v4, v1, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    move/from16 v2, p3

    int-to-double v8, v2

    add-double/2addr v8, v6

    cmpl-double v2, v4, v8

    if-ltz v2, :cond_5c

    iget-wide v8, v1, Lcom/cmyksoft/retroworld/Player;->height:D

    sub-double/2addr v4, v8

    move/from16 v2, p5

    int-to-double v8, v2

    add-double/2addr v8, v6

    cmpg-double v2, v4, v8

    if-gtz v2, :cond_5c

    iget-boolean v2, v1, Lcom/cmyksoft/retroworld/Player;->inStar:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_57

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    invoke-virtual {v0, v3, v1, v3}, Lcom/cmyksoft/retroworld/Enemy;->damage(ZZI)V

    goto :goto_5c

    :cond_57
    iget v2, v0, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    invoke-virtual {v1, v2}, Lcom/cmyksoft/retroworld/Player;->damage(I)V

    :cond_5c
    :goto_5c
    return v3
.end method

.method public checkRavine(Lcom/cmyksoft/retroworld/Game;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    iget-wide v4, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_d

    return-void

    :cond_d
    const-wide/16 v6, 0x0

    add-double v8, v4, v6

    iget-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    sub-double v12, v4, v10

    add-double/2addr v12, v6

    add-double v14, v4, v10

    add-double/2addr v14, v6

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide v16, 0x3f847ae147ae147bL  # 0.01

    add-double v6, v6, v16

    const-wide/high16 v18, 0x4040000000000000L  # 32.0

    div-double v8, v8, v18

    double-to-int v8, v8

    div-double v12, v12, v18

    double-to-int v9, v12

    div-double v14, v14, v18

    double-to-int v12, v14

    div-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v7, v6, 0x1

    const/4 v14, 0x1

    if-gez v9, :cond_37

    const/4 v9, 0x0

    goto :goto_3d

    :cond_37
    iget v15, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    if-lt v9, v15, :cond_3d

    add-int/lit8 v9, v15, -0x1

    :cond_3d
    :goto_3d
    if-gez v12, :cond_41

    const/4 v12, 0x0

    goto :goto_47

    :cond_41
    iget v15, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    if-lt v12, v15, :cond_47

    add-int/lit8 v12, v15, -0x1

    :cond_47
    :goto_47
    if-gez v8, :cond_4b

    const/4 v8, 0x0

    goto :goto_51

    :cond_4b
    iget v15, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    if-lt v8, v15, :cond_51

    add-int/lit8 v8, v15, -0x1

    :cond_51
    :goto_51
    if-gez v6, :cond_55

    const/4 v6, 0x0

    goto :goto_5b

    :cond_55
    iget v15, v1, Lcom/cmyksoft/retroworld/Game;->fieldHeight:I

    if-lt v6, v15, :cond_5b

    add-int/lit8 v6, v15, -0x1

    :cond_5b
    :goto_5b
    if-gez v7, :cond_5f

    const/4 v7, 0x0

    goto :goto_65

    :cond_5f
    iget v15, v1, Lcom/cmyksoft/retroworld/Game;->fieldHeight:I

    if-lt v7, v15, :cond_65

    add-int/lit8 v7, v15, -0x1

    :cond_65
    :goto_65
    iget-object v15, v1, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v13, v1, Lcom/cmyksoft/retroworld/Game;->field:[C

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    mul-int v19, v6, v1

    add-int v19, v9, v19

    aget-char v19, v13, v19

    aget-byte v14, v15, v19

    mul-int v19, v6, v1

    add-int v19, v12, v19

    aget-char v19, v13, v19

    aget-byte v0, v15, v19

    mul-int v6, v6, v1

    add-int/2addr v8, v6

    aget-char v6, v13, v8

    aget-byte v6, v15, v6

    mul-int v8, v7, v1

    add-int/2addr v8, v9

    aget-char v8, v13, v8

    aget-byte v8, v15, v8

    mul-int v7, v7, v1

    add-int/2addr v7, v12

    aget-char v1, v13, v7

    aget-byte v1, v15, v1

    const/4 v15, 0x6

    const/16 v7, 0x1e

    const/16 v13, 0x5a

    cmpg-double v20, v4, v2

    if-gez v20, :cond_de

    if-eqz v6, :cond_bb

    if-eq v6, v7, :cond_bb

    if-eq v6, v15, :cond_bb

    if-ne v6, v13, :cond_a2

    goto :goto_bb

    :cond_a2
    const/4 v0, 0x7

    if-ne v6, v0, :cond_ac

    const/16 v0, 0x64

    if-ge v14, v0, :cond_cb

    if-ne v14, v13, :cond_c9

    goto :goto_cb

    :cond_ac
    const/16 v0, 0x64

    const/16 v1, 0xa

    if-lt v6, v1, :cond_c9

    const/16 v1, 0x11

    if-gt v6, v1, :cond_c9

    if-ge v8, v0, :cond_cb

    if-ne v8, v13, :cond_c9

    goto :goto_cb

    :cond_bb
    :goto_bb
    const/4 v0, 0x7

    if-eq v14, v0, :cond_cb

    const/16 v0, 0x27

    if-eq v14, v0, :cond_cb

    const/16 v0, 0x64

    if-ge v14, v0, :cond_cb

    if-ne v14, v13, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v13, 0x0

    goto :goto_cc

    :cond_cb
    :goto_cb
    const/4 v13, 0x1

    :goto_cc
    if-eqz v13, :cond_db

    const/4 v0, 0x1

    add-int/2addr v9, v0

    mul-int/lit8 v9, v9, 0x20

    int-to-double v1, v9

    add-double/2addr v1, v10

    add-double v1, v1, v16

    move-object/from16 v3, p0

    iput-wide v1, v3, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto :goto_120

    :cond_db
    move-object/from16 v3, p0

    goto :goto_122

    :cond_de
    move-object/from16 v3, p0

    move v2, v0

    const/4 v0, 0x1

    if-eqz v6, :cond_104

    if-eq v6, v7, :cond_104

    if-eq v6, v15, :cond_104

    if-ne v6, v13, :cond_eb

    goto :goto_104

    :cond_eb
    const/4 v4, 0x7

    if-ne v6, v4, :cond_f5

    const/16 v4, 0x64

    if-ge v2, v4, :cond_114

    if-ne v2, v13, :cond_112

    goto :goto_114

    :cond_f5
    const/16 v2, 0xa

    const/16 v4, 0x64

    if-lt v6, v2, :cond_112

    const/16 v2, 0x11

    if-gt v6, v2, :cond_112

    if-ge v1, v4, :cond_114

    if-ne v1, v13, :cond_112

    goto :goto_114

    :cond_104
    :goto_104
    const/4 v1, 0x7

    if-eq v2, v1, :cond_114

    const/16 v1, 0x27

    if-eq v2, v1, :cond_114

    const/16 v1, 0x64

    if-ge v2, v1, :cond_114

    if-ne v2, v13, :cond_112

    goto :goto_114

    :cond_112
    const/4 v14, 0x0

    goto :goto_115

    :cond_114
    :goto_114
    const/4 v14, 0x1

    :goto_115
    if-eqz v14, :cond_122

    mul-int/lit8 v12, v12, 0x20

    int-to-double v0, v12

    sub-double/2addr v0, v10

    sub-double v0, v0, v16

    iput-wide v0, v3, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const/4 v0, 0x0

    :goto_120
    iput-boolean v0, v3, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    :cond_122
    :goto_122
    return-void
.end method

.method public checkRoof(Lcom/cmyksoft/retroworld/Game;Z)Z
    .registers 15

    iget-wide v3, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v7, p0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/4 v11, 0x1

    cmpg-double v0, v3, v7

    if-gez v0, :cond_13

    if-eqz p2, :cond_13

    iput-wide v7, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double p1, p1

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    return v11

    :cond_13
    iget-wide v1, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v5, p0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmyksoft/retroworld/Game;->checkRoof(DDDDBZ)Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-wide v0, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-wide p1, p1, Lcom/cmyksoft/retroworld/Game;->returnY:D

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    return v11

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public checkWaterRoof(Lcom/cmyksoft/retroworld/Game;)Z
    .registers 15

    iget-wide v1, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v3, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, p0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    div-double v7, v5, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmyksoft/retroworld/Game;->checkWater(DDDD)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    iget-wide v2, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v4, 0x4020000000000000L  # 8.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    return v1

    :cond_1a
    iget-wide v5, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v7, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, p0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    div-double v11, v2, v9

    move-object v4, p1

    move-wide v9, v2

    invoke-virtual/range {v4 .. v12}, Lcom/cmyksoft/retroworld/Game;->checkWaterBorder(DDDD)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-wide v2, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v2, v2

    iput-wide v2, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    return v1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public final checkWeb(DD)Z
    .registers 7

    const-wide/16 v0, 0x0

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    sub-double/2addr p3, v0

    const-wide/high16 v0, 0x4040000000000000L  # 32.0

    div-double/2addr p1, v0

    double-to-int p1, p1

    div-double/2addr p3, v0

    double-to-int p2, p3

    const/4 p3, 0x0

    if-ltz p1, :cond_2c

    iget-object p4, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v0, p4, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    if-ge p1, v0, :cond_2c

    if-ltz p2, :cond_2c

    iget v1, p4, Lcom/cmyksoft/retroworld/Game;->fieldHeight:I

    if-lt p2, v1, :cond_1c

    goto :goto_2c

    :cond_1c
    iget-object v1, p4, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object p4, p4, Lcom/cmyksoft/retroworld/Game;->field:[C

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    aget-char p1, p4, p1

    aget-byte p1, v1, p1

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_2c

    const/4 p3, 0x1

    :cond_2c
    :goto_2c
    return p3
.end method

.method public checkX(Lcom/cmyksoft/retroworld/Game;)Z
    .registers 15

    iget-wide v1, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v3, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, p0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v7, p0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iget-wide v9, p0, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v12}, Lcom/cmyksoft/retroworld/Game;->checkWall(DDDDDZZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-wide v2, p1, Lcom/cmyksoft/retroworld/Game;->returnX:D

    iget-wide v4, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const/4 p1, 0x1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    iput-boolean v1, p0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iput-wide v2, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    return p1

    :cond_24
    return v1
.end method

.method public checkYAndJump(Lcom/cmyksoft/retroworld/Game;DZDZZ)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v14, p5

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    const-wide/16 v12, 0x0

    if-nez v2, :cond_9e

    iget-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    iget-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/16 v16, 0x0

    move/from16 v12, v16

    iget-boolean v13, v0, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    move/from16 v24, v13

    iget-wide v12, v0, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    move-wide v14, v12

    iget-wide v12, v0, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    move-wide/from16 v16, v12

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v12, v1

    move-object/from16 v1, p1

    move/from16 v13, v24

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v19}, Lcom/cmyksoft/retroworld/Game;->checkGround(DDDDDZZDDZZ)Z

    move-result v1

    if-nez v1, :cond_83

    iget-boolean v13, v0, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    if-eqz v13, :cond_6e

    iget-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v6, 0x4030000000000000L  # 16.0

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    iget-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/4 v12, 0x0

    iget-wide v14, v0, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    move/from16 v23, v13

    iget-wide v12, v0, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    move-wide/from16 v16, v12

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v1, p1

    move/from16 v13, v23

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v19}, Lcom/cmyksoft/retroworld/Game;->checkGround(DDDDDZZDDZZ)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    move-object/from16 v12, p1

    iget-wide v1, v12, Lcom/cmyksoft/retroworld/Game;->returnY:D

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    move-wide/from16 v1, p5

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    goto :goto_92

    :cond_6e
    move-object/from16 v12, p1

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    move-wide/from16 v1, p5

    if-eqz p4, :cond_7c

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v3, 0x0

    goto :goto_80

    :cond_7c
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :goto_80
    const/16 v20, 0x0

    goto :goto_94

    :cond_83
    move-object/from16 v12, p1

    move-wide/from16 v1, p5

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    iget-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    iget-wide v5, v12, Lcom/cmyksoft/retroworld/Game;->returnY:D

    iput-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    :goto_92
    const/16 v20, 0x1

    :goto_94
    if-eqz v20, :cond_9c

    if-eqz p4, :cond_9c

    iput-boolean v10, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :cond_9c
    const/4 v13, 0x1

    goto :goto_a2

    :cond_9e
    move-wide v3, v12

    const/4 v10, 0x1

    move-object v12, v1

    const/4 v13, 0x0

    :goto_a2
    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-eqz v1, :cond_15f

    if-eqz p8, :cond_15f

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide v5, -0x3fe6cccccccccccdL  # -6.3

    const-wide/high16 v14, -0x3fe4000000000000L  # -7.0

    const-wide v16, 0x3feccccccccccccdL  # 0.9

    cmpg-double v7, v1, v14

    if-gez v7, :cond_c3

    mul-double v18, p2, v5

    add-double v10, v8, v18

    goto :goto_c8

    :cond_c3
    mul-double v10, v1, v16

    mul-double v10, v10, p2

    add-double/2addr v10, v8

    :goto_c8
    iput-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    mul-double v10, p2, v16

    add-double/2addr v1, v10

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    if-eqz p7, :cond_d8

    const-wide/high16 v18, 0x4008000000000000L  # 3.0

    mul-double v10, v10, v18

    add-double/2addr v1, v10

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :cond_d8
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v10, 0x401c000000000000L  # 7.0

    cmpl-double v7, v1, v10

    if-lez v7, :cond_e2

    iput-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :cond_e2
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    cmpg-double v7, v1, v14

    if-gez v7, :cond_f0

    iget-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    mul-double v5, v5, p2

    add-double/2addr v10, v5

    iput-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    goto :goto_fa

    :cond_f0
    iget-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    mul-double v16, v16, v1

    mul-double v16, v16, p2

    add-double v5, v5, v16

    iput-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    :goto_fa
    cmpl-double v5, v1, v3

    if-ltz v5, :cond_144

    iget-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v10, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v14, v0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    move-wide/from16 v21, v8

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    cmpl-double v7, v1, v3

    if-ltz v7, :cond_113

    const/16 v23, 0x1

    goto :goto_115

    :cond_113
    const/16 v23, 0x0

    :goto_115
    iget-boolean v13, v0, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    move-wide/from16 v24, v14

    move-wide v14, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move-wide v2, v5

    move-wide v4, v10

    move-wide/from16 v6, v24

    move-wide v10, v8

    move-wide/from16 v8, v21

    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v12, v23

    invoke-virtual/range {v1 .. v19}, Lcom/cmyksoft/retroworld/Game;->checkGround(DDDDDZZDDZZ)Z

    move-result v1

    if-eqz v1, :cond_13f

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Game;->returnY:D

    move-object v12, v0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    goto :goto_142

    :cond_13f
    move-object v12, v0

    move-object/from16 v0, p0

    :goto_142
    const/4 v10, 0x1

    goto :goto_160

    :cond_144
    iget-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v8, v0, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/cmyksoft/retroworld/Game;->checkRoof(DDDDBZ)Z

    move-result v1

    if-eqz v1, :cond_15f

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v1, v1

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-wide v1, v12, Lcom/cmyksoft/retroworld/Game;->returnY:D

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    :cond_15f
    move v10, v13

    :goto_160
    if-eqz v10, :cond_166

    iget-boolean v1, v12, Lcom/cmyksoft/retroworld/Game;->returnInHill:Z

    iput-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    :cond_166
    return-void
.end method

.method public damage(ZZI)V
    .registers 11

    iget-boolean v0, p0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/cmyksoft/retroworld/Enemy;->life:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/cmyksoft/retroworld/Enemy;->life:I

    const/16 p3, 0x40

    const/16 v1, 0x38

    const/4 v2, 0x1

    if-lez v0, :cond_35

    iput-boolean v2, p0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    iget p1, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-lt p1, v1, :cond_24

    if-gt p1, p3, :cond_24

    const-wide/high16 p1, 0x403e000000000000L  # 30.0

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->damageTime:D

    iget-object p1, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object p1, p1, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget p2, p1, Lcom/cmyksoft/retroworld/Sound;->sndEnemyDead:I

    goto :goto_2e

    :cond_24
    const-wide/high16 p1, 0x4034000000000000L  # 20.0

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->damageTime:D

    iget-object p1, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object p1, p1, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget p2, p1, Lcom/cmyksoft/retroworld/Sound;->sndEnemyDamage:I

    :goto_2e
    invoke-virtual {p1, p2}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    invoke-virtual {p0}, Lcom/cmyksoft/retroworld/Enemy;->enemyResponsiveness()V

    goto :goto_8e

    :cond_35
    iget v0, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-lt v0, v1, :cond_42

    if-gt v0, p3, :cond_42

    iget-object v0, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v3, v0, Lcom/cmyksoft/retroworld/Sound;->sndBossDead:I

    goto :goto_48

    :cond_42
    iget-object v0, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v3, v0, Lcom/cmyksoft/retroworld/Sound;->sndEnemyDead:I

    :goto_48
    invoke-virtual {v0, v3}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    iget-object v0, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Game;->isBossArea:Z

    if-eqz v3, :cond_8b

    iget v3, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-lt v3, v1, :cond_8b

    if-gt v3, p3, :cond_8b

    iget-boolean p3, p0, Lcom/cmyksoft/retroworld/Enemy;->isMany:Z

    if-eqz p3, :cond_7c

    iget-object p3, v0, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_64
    if-ge v1, p3, :cond_7d

    iget-object v4, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v4, v4, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmyksoft/retroworld/Enemy;

    iget v5, v4, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_79

    if-eq v4, p0, :cond_79

    const/4 v3, 0x0

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_7c
    const/4 v3, 0x1

    :cond_7d
    if-eqz v3, :cond_8b

    iget-object p3, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-byte v0, p3, Lcom/cmyksoft/retroworld/Game;->bossPrize:B

    invoke-virtual {p3, v0}, Lcom/cmyksoft/retroworld/Game;->createBossBonus(B)V

    iget-object p3, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {p3, v2}, Lcom/cmyksoft/retroworld/Game;->levelVictory(Z)V

    :cond_8b
    invoke-virtual {p0, p1, p2}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    :goto_8e
    return-void
.end method

.method public dead(ZZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_8

    const-wide/high16 p1, 0x4000000000000000L  # 2.0

    goto :goto_a

    :cond_8
    const-wide/high16 p1, -0x4000000000000000L  # -2.0

    :goto_a
    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    iget-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v1, 0x4010000000000000L  # 4.0

    add-double/2addr p1, v1

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    goto :goto_23

    :cond_1b
    iput-boolean v0, p0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    const-wide/high16 p1, 0x4034000000000000L  # 20.0

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide p1, p0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    :goto_23
    iget p1, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    neg-int p1, p1

    iput p1, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    iput-boolean v0, p0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    return-void
.end method

.method public draw(Lcom/cmyksoft/retroworld/Graphics;Z)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v3, v1

    iget-object v4, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v9, v4, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int v13, v3, v9

    iget-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v3, v5

    iget v10, v4, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int v14, v3, v10

    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    const/4 v11, 0x2

    if-eqz v3, :cond_1f

    iget v7, v4, Lcom/cmyksoft/retroworld/Game;->intTime:I

    rem-int/2addr v7, v11

    if-nez v7, :cond_1f

    return-void

    :cond_1f
    iget v7, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    move/from16 v16, v9

    const-wide/high16 v18, 0x4008000000000000L  # 3.0

    const/16 v20, 0x28

    const/16 v22, 0x24

    const/16 v24, 0x10

    const/4 v15, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v29, 0x0

    if-gez v7, :cond_292

    neg-int v1, v7

    if-ne v1, v8, :cond_3e

    const/16 v1, 0xa0

    :goto_37
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    goto/16 :goto_27e

    :cond_3e
    if-ne v1, v11, :cond_43

    const/16 v1, 0x140

    goto :goto_37

    :cond_43
    if-ne v1, v15, :cond_48

    const/16 v1, 0x1e0

    goto :goto_37

    :cond_48
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4f

    const/16 v1, 0x2a8

    goto :goto_37

    :cond_4f
    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_5e

    const/16 v1, 0x2e8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    :goto_5a
    const/16 v20, 0x1c

    goto/16 :goto_27e

    :cond_5e
    if-ne v1, v9, :cond_6b

    const/16 v1, 0x368

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1a

    :goto_67
    const/16 v20, 0x20

    goto/16 :goto_27e

    :cond_6b
    const/4 v2, 0x5

    if-ne v1, v2, :cond_82

    add-int/lit8 v14, v14, 0x2

    const/16 v1, 0x16

    const/16 v2, 0x68

    const/16 v3, 0x41

    const/16 v1, 0x68

    const/16 v2, 0x41

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x16

    const/16 v20, 0x1a

    goto/16 :goto_27e

    :cond_82
    const/4 v2, 0x6

    if-eq v1, v2, :cond_26b

    const/4 v2, 0x7

    if-eq v1, v2, :cond_26b

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8e

    goto/16 :goto_26b

    :cond_8e
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a3

    const/16 v9, 0x2e

    const/16 v1, 0x30

    const/16 v2, 0x25c

    const/16 v1, 0x25c

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/16 v9, 0x30

    const/16 v20, 0x2e

    goto/16 :goto_27e

    :cond_a3
    const/16 v2, 0xa

    if-ne v1, v2, :cond_af

    const/16 v9, 0x1e

    const/16 v1, 0x2ca

    const/16 v2, 0x40

    const/4 v3, 0x0

    goto :goto_67

    :cond_af
    const/16 v2, 0xb

    if-ne v1, v2, :cond_bc

    const/16 v9, 0xe

    const/16 v1, 0x38a

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto :goto_5a

    :cond_bc
    const/16 v2, 0xc

    if-ne v1, v2, :cond_c9

    const/16 v1, 0x38a

    const/16 v2, 0x5c

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    goto :goto_5a

    :cond_c9
    const/16 v2, 0xd

    if-ne v1, v2, :cond_db

    const/16 v1, 0x12c

    const/16 v8, 0x70

    const/16 v2, 0x70

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/16 v20, 0x24

    goto/16 :goto_27e

    :cond_db
    const/16 v2, 0xe

    if-ne v1, v2, :cond_f3

    const/16 v9, 0x39

    const/16 v1, 0x2d

    const/16 v2, 0xab

    const/16 v3, 0x70

    const/16 v1, 0xab

    const/16 v2, 0x70

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x2d

    const/16 v20, 0x39

    goto/16 :goto_27e

    :cond_f3
    const/16 v2, 0xf

    if-ne v1, v2, :cond_100

    const/16 v1, 0x134

    const/16 v2, 0xa2

    const/4 v3, 0x0

    const/16 v9, 0x28

    goto/16 :goto_27e

    :cond_100
    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_132

    add-int/lit8 v4, v14, -0x4

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/high16 v5, 0x4031000000000000L  # 17.0

    cmpl-double v3, v1, v5

    if-lez v3, :cond_120

    const/16 v2, 0x16

    const/16 v5, 0x300

    const/16 v6, 0x72

    const/16 v7, 0xe

    const/16 v8, 0xe

    :goto_118
    const/4 v9, 0x4

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    goto :goto_131

    :cond_120
    const-wide/high16 v5, 0x402c000000000000L  # 14.0

    cmpl-double v3, v1, v5

    if-lez v3, :cond_131

    const/16 v2, 0x16

    const/16 v5, 0x300

    const/16 v6, 0x60

    const/16 v7, 0x12

    const/16 v8, 0x12

    goto :goto_118

    :cond_131
    :goto_131
    return-void

    :cond_132
    const/16 v2, 0x14

    if-ne v1, v2, :cond_144

    const/16 v9, 0x1f

    const/16 v1, 0x1cc

    :goto_13a
    const/16 v2, 0x70

    :goto_13c
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/16 v20, 0x1f

    goto/16 :goto_27e

    :cond_144
    const/16 v2, 0x15

    if-ne v1, v2, :cond_14d

    const/16 v9, 0x1f

    const/16 v1, 0x267

    goto :goto_13a

    :cond_14d
    const/16 v2, 0x16

    if-ne v1, v2, :cond_158

    const/16 v9, 0x1f

    const/16 v1, 0x267

    const/16 v2, 0xa0

    goto :goto_13c

    :cond_158
    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_16d

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/16 v9, 0xe

    mul-int/lit8 v1, v1, 0xe

    add-int/lit16 v1, v1, 0x371

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/16 v9, 0xb

    const/16 v20, 0xe

    goto/16 :goto_27e

    :cond_16d
    const/16 v2, 0x7d3

    if-ne v1, v2, :cond_19b

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v5, v1, v3

    cmpg-double v7, v5, v18

    if-gez v7, :cond_18e

    const/16 v2, 0x4e

    const/16 v5, 0x9a

    :goto_17f
    const/16 v6, 0xdf

    const/16 v7, 0x1b

    const/16 v8, 0x1b

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    goto :goto_19a

    :cond_18e
    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4018000000000000L  # 6.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_19a

    const/16 v2, 0x4e

    const/16 v5, 0xb6

    goto :goto_17f

    :cond_19a
    :goto_19a
    return-void

    :cond_19b
    const/16 v2, 0x38

    if-lt v1, v2, :cond_263

    const/16 v2, 0x40

    if-gt v1, v2, :cond_263

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1bc

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/16 v2, 0x2e

    if-eqz v1, :cond_1af

    const/16 v29, 0x2e

    :cond_1af
    const/16 v1, 0x144

    move v4, v14

    move/from16 v6, v29

    const/16 v5, 0x144

    const/16 v7, 0x24

    const/16 v8, 0x2e

    goto/16 :goto_255

    :cond_1bc
    const/16 v2, 0x39

    if-ne v1, v2, :cond_1cc

    const/16 v1, 0x120

    move v4, v14

    const/16 v5, 0x120

    const/4 v6, 0x0

    const/16 v7, 0x60

    const/16 v8, 0x60

    goto/16 :goto_255

    :cond_1cc
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1e0

    const/16 v1, 0x4c

    const/16 v2, 0x32

    const/16 v3, 0x101

    move v4, v14

    const/16 v5, 0x101

    const/4 v6, 0x0

    const/16 v7, 0x4c

    const/16 v8, 0x32

    goto/16 :goto_255

    :cond_1e0
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1f5

    const/16 v1, 0x43

    const/16 v2, 0x50

    const/16 v3, 0xc9

    move v4, v14

    const/16 v5, 0xc9

    const/16 v6, 0x10

    const/16 v7, 0x43

    const/16 v8, 0x50

    goto/16 :goto_255

    :cond_1f5
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1ff

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

    invoke-virtual {v1, v12}, Lcom/cmyksoft/retroworld/AdditionalBoss;->drawDead(Lcom/cmyksoft/retroworld/Graphics;)V

    return-void

    :cond_1ff
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_21b

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/16 v2, 0x5f

    if-eqz v1, :cond_20b

    const/16 v29, 0x5f

    :cond_20b
    add-int/lit8 v14, v14, 0x3

    const/16 v1, 0x57

    const/16 v3, 0x105

    move v4, v14

    move/from16 v6, v29

    const/16 v5, 0x105

    const/16 v7, 0x57

    const/16 v8, 0x5f

    goto :goto_255

    :cond_21b
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_237

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_226

    const/16 v1, 0x2c

    goto :goto_228

    :cond_226
    const/16 v1, 0x6a

    :goto_228
    const/16 v2, 0x3e

    const/16 v3, 0x2b

    const/16 v4, 0x8f

    move v5, v1

    move v4, v14

    const/16 v6, 0x8f

    const/16 v7, 0x3e

    const/16 v8, 0x2b

    goto :goto_255

    :cond_237
    const/16 v2, 0x3f

    if-ne v1, v2, :cond_250

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_242

    const/16 v1, 0x34c

    goto :goto_244

    :cond_242
    const/16 v1, 0x314

    :goto_244
    const/16 v2, 0x38

    const/16 v3, 0x7b

    move v5, v1

    move v4, v14

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/16 v8, 0x7b

    goto :goto_255

    :cond_250
    move v4, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_255
    if-lez v7, :cond_262

    if-lez v8, :cond_262

    const/16 v2, 0x4e

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_262
    return-void

    :cond_263
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    goto :goto_27e

    :cond_26b
    :goto_26b
    add-int/lit8 v1, v1, -0x6

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v15

    const/16 v2, 0x1c

    mul-int/lit8 v1, v1, 0x1c

    add-int/lit16 v1, v1, 0x82

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x18

    goto/16 :goto_5a

    :goto_27e
    if-nez v8, :cond_289

    iget-boolean v4, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_287

    const/4 v3, 0x0

    goto :goto_288

    :cond_287
    move v3, v9

    :goto_288
    add-int/2addr v2, v3

    :cond_289
    move v5, v1

    move v6, v2

    move v8, v9

    move-object v11, v12

    move v3, v13

    move v4, v14

    move/from16 v7, v20

    goto :goto_2b7

    :cond_292
    if-le v7, v15, :cond_f59

    const/16 v15, 0x3e8

    if-ne v7, v15, :cond_29a

    goto/16 :goto_f59

    :cond_29a
    const/16 v15, 0x3e9

    if-ne v7, v15, :cond_2c1

    const-wide/high16 v3, 0x4010000000000000L  # 4.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/2addr v1, v9

    rem-int/lit8 v2, v1, 0x2

    const/16 v3, 0x1c

    mul-int/lit8 v2, v2, 0x1c

    add-int/lit16 v2, v2, 0x2e8

    div-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x1c

    move v6, v1

    move v5, v2

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v7, 0x1c

    const/16 v8, 0x1c

    :goto_2b7
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v28, 0x0

    goto/16 :goto_1020

    :cond_2c1
    if-ne v7, v9, :cond_2e9

    const-wide/high16 v3, 0x401c000000000000L  # 7.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x10

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_2d0

    const/4 v15, 0x0

    goto :goto_2d2

    :cond_2d0
    const/16 v15, 0x20

    :goto_2d2
    add-int/2addr v1, v15

    if-eqz v2, :cond_2d7

    const/4 v9, -0x8

    goto :goto_2d9

    :cond_2d7
    const/16 v9, 0x8

    :goto_2d9
    add-int/2addr v13, v9

    const/16 v2, 0x338

    const/16 v3, 0x30

    move v6, v1

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v5, 0x338

    const/16 v7, 0x30

    :goto_2e6
    const/16 v8, 0x10

    goto :goto_2b7

    :cond_2e9
    const/16 v15, 0x3ea

    if-ne v7, v15, :cond_310

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/2addr v1, v11

    if-nez v1, :cond_2fe

    add-int/lit8 v14, v14, -0x2

    const/16 v1, 0xf

    const/16 v2, 0xf

    const/4 v15, 0x0

    goto :goto_304

    :cond_2fe
    const/16 v1, 0x13

    const/16 v2, 0x13

    const/16 v15, 0xf

    :goto_304
    add-int/2addr v14, v8

    const/16 v3, 0x388

    move v7, v1

    move v8, v2

    move-object v11, v12

    move v3, v13

    move v4, v14

    move v6, v15

    const/16 v5, 0x388

    goto :goto_2b7

    :cond_310
    const/4 v15, 0x5

    if-ne v7, v15, :cond_347

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v1, :cond_321

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    div-double v1, v1, v18

    double-to-int v1, v1

    rem-int/lit8 v11, v1, 0x2

    :goto_31e
    const/16 v1, 0x1a

    goto :goto_32c

    :cond_321
    if-ne v1, v8, :cond_324

    goto :goto_31e

    :cond_324
    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    div-double v1, v1, v18

    double-to-int v1, v1

    rem-int/2addr v1, v11

    add-int/2addr v11, v1

    goto :goto_31e

    :goto_32c
    mul-int/lit8 v11, v11, 0x1a

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/16 v2, 0x16

    if-eqz v1, :cond_337

    const/16 v1, 0x16

    goto :goto_338

    :cond_337
    const/4 v1, 0x0

    :goto_338
    add-int/lit8 v1, v1, 0x41

    add-int/lit8 v14, v14, 0x2

    move v6, v1

    move v5, v11

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v7, 0x1a

    const/16 v8, 0x16

    goto/16 :goto_2b7

    :cond_347
    const/4 v15, 0x6

    if-eq v7, v15, :cond_f22

    const/4 v15, 0x7

    if-eq v7, v15, :cond_f22

    const/16 v15, 0x8

    if-ne v7, v15, :cond_353

    goto/16 :goto_f22

    :cond_353
    const/16 v9, 0x9

    if-ne v7, v9, :cond_39a

    div-double v1, v1, v18

    double-to-int v1, v1

    rem-int/2addr v1, v15

    sget-object v2, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    rem-int/lit8 v3, v1, 0x4

    aget v2, v2, v3

    const/16 v3, 0x2e

    mul-int/lit8 v2, v2, 0x2e

    add-int/lit16 v2, v2, 0x1d2

    if-ne v1, v8, :cond_37b

    add-int/lit8 v29, v13, -0x1

    add-int/lit8 v1, v14, -0x1d

    const/16 v4, 0x9

    const/16 v5, 0x2e8

    const/16 v6, 0x38

    move v5, v1

    move/from16 v1, v29

    const/16 v15, 0xd

    const/16 v29, 0x2e8

    goto :goto_381

    :cond_37b
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_381
    const/16 v7, 0x30

    move v10, v5

    move/from16 v28, v8

    move-object v11, v12

    move v3, v13

    move/from16 v16, v15

    move/from16 v12, v29

    const/16 v7, 0x2e

    const/16 v8, 0x30

    move/from16 v29, v1

    move v5, v2

    move v13, v4

    move v15, v6

    move v4, v14

    const/16 v6, 0x40

    goto/16 :goto_1020

    :cond_39a
    const/16 v9, 0xa

    if-ne v7, v9, :cond_3b8

    add-double/2addr v1, v5

    const-wide/high16 v3, 0x4010000000000000L  # 4.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/2addr v1, v11

    const/16 v9, 0x20

    mul-int/lit8 v1, v1, 0x20

    add-int/lit16 v1, v1, 0x28a

    const/16 v2, 0x1e

    move v5, v1

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v6, 0x40

    const/16 v7, 0x20

    const/16 v8, 0x1e

    goto/16 :goto_2b7

    :cond_3b8
    const/16 v9, 0x20

    const/16 v15, 0xb

    if-ne v7, v15, :cond_3e2

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x5

    rem-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int/lit16 v1, v1, 0x2ea

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/16 v3, 0xe

    if-eqz v2, :cond_3d3

    const/16 v2, 0xe

    goto :goto_3d4

    :cond_3d3
    const/4 v2, 0x0

    :goto_3d4
    const/16 v4, 0x40

    add-int/2addr v2, v4

    move v5, v1

    move v6, v2

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v7, 0x20

    const/16 v8, 0xe

    goto/16 :goto_2b7

    :cond_3e2
    const/16 v9, 0xc

    if-ne v7, v9, :cond_409

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/16 v25, 0x5

    rem-int/lit8 v1, v1, 0x5

    const/16 v2, 0x20

    mul-int/lit8 v1, v1, 0x20

    add-int/lit16 v1, v1, 0x2ea

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_3fd

    const/16 v2, 0x10

    goto :goto_3fe

    :cond_3fd
    const/4 v2, 0x0

    :goto_3fe
    add-int/lit8 v2, v2, 0x5c

    move v5, v1

    move v6, v2

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v7, 0x20

    goto/16 :goto_2e6

    :cond_409
    const/16 v9, 0xd

    const/16 v25, 0x5

    if-ne v7, v9, :cond_434

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-eqz v1, :cond_414

    goto :goto_41b

    :cond_414
    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    div-double v1, v1, v18

    double-to-int v1, v1

    rem-int/lit8 v8, v1, 0x2

    :goto_41b
    mul-int/lit8 v8, v8, 0x24

    add-int/lit16 v8, v8, 0xe4

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_425

    const/4 v1, 0x0

    goto :goto_427

    :cond_425
    const/16 v1, 0x18

    :goto_427
    add-int/lit8 v1, v1, 0x70

    add-int/lit8 v14, v14, 0x1

    move v6, v1

    move v5, v8

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v7, 0x24

    goto/16 :goto_f55

    :cond_434
    const/16 v9, 0xe

    if-ne v7, v9, :cond_467

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-eqz v1, :cond_43d

    goto :goto_448

    :cond_43d
    sget-object v1, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    div-double v2, v2, v18

    double-to-int v2, v2

    const/4 v9, 0x4

    rem-int/2addr v2, v9

    aget v11, v1, v2

    :goto_448
    const/16 v1, 0x39

    mul-int/lit8 v11, v11, 0x39

    add-int/lit8 v11, v11, 0x0

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/16 v3, 0x2d

    if-eqz v2, :cond_457

    const/16 v2, 0x2d

    goto :goto_458

    :cond_457
    const/4 v2, 0x0

    :goto_458
    add-int/lit8 v2, v2, 0x70

    add-int/lit8 v14, v14, 0x1

    move v6, v2

    move v5, v11

    move-object v11, v12

    move v3, v13

    move v4, v14

    const/16 v7, 0x39

    const/16 v8, 0x2d

    goto/16 :goto_2b7

    :cond_467
    const/16 v9, 0xf

    if-ne v7, v9, :cond_49c

    const-wide/high16 v1, 0x4024000000000000L  # 10.0

    div-double/2addr v5, v1

    double-to-int v1, v5

    rem-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x28

    add-int/lit16 v15, v1, 0xe4

    add-int/lit8 v14, v14, 0x2

    const/16 v2, 0x19

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int v4, v1, v10

    const/4 v5, 0x3

    add-int/lit8 v3, v14, -0x24

    sub-int/2addr v3, v1

    add-int v6, v3, v10

    const/16 v7, 0x39b

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/16 v10, 0x40

    const/4 v11, 0x1

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v11}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIIIII)V

    const/16 v1, 0xa2

    move-object v11, v12

    move v4, v14

    move v5, v15

    const/16 v6, 0xa2

    const/16 v7, 0x28

    const/16 v8, 0x28

    goto/16 :goto_2b7

    :cond_49c
    const/16 v5, 0x3ec

    if-ne v7, v5, :cond_4e3

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v3, v1, v1

    iget-wide v5, v0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v7, v5, v5

    add-double/2addr v3, v7

    const-wide/high16 v7, 0x4004000000000000L  # 2.5

    cmpl-double v9, v3, v7

    if-lez v9, :cond_4c7

    neg-double v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4020000000000000L  # 8.0

    mul-double v1, v1, v3

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    move/from16 v24, v1

    :cond_4c7
    const/16 v1, 0x1a

    mul-int/lit8 v24, v24, 0x1a

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v2, v2, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v2, v2

    rem-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1a

    add-int/lit16 v2, v2, 0xca

    add-int/lit8 v14, v14, 0x5

    move v6, v2

    move-object v11, v12

    move v3, v13

    move v4, v14

    move/from16 v5, v24

    const/16 v7, 0x1a

    const/16 v8, 0x1a

    goto/16 :goto_2b7

    :cond_4e3
    const/16 v5, 0x14

    if-eq v7, v5, :cond_ed0

    const/16 v5, 0x15

    if-eq v7, v5, :cond_ed0

    const/16 v5, 0x16

    if-ne v7, v5, :cond_4f1

    goto/16 :goto_ed0

    :cond_4f1
    const/16 v5, 0x7d0

    if-ne v7, v5, :cond_516

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v1, v1

    const/16 v2, 0x8

    rem-int/2addr v1, v2

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-nez v2, :cond_501

    rsub-int/lit8 v1, v1, 0x7

    :cond_501
    const/16 v2, 0x20

    mul-int/lit8 v5, v1, 0x20

    const/16 v6, 0x60

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/16 v2, 0x16

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_516
    const/16 v5, 0x18

    if-lt v7, v5, :cond_64f

    const/16 v5, 0x1d

    if-gt v7, v5, :cond_64f

    sget-object v1, Lcom/cmyksoft/retroworld/Enemy;->FRAME_KIND_ELECTRO:[B

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    div-double v2, v2, v18

    double-to-int v2, v2

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    if-lez v1, :cond_533

    const/16 v1, 0x1a

    if-lt v7, v1, :cond_533

    const/16 v1, 0x18

    sub-int/2addr v7, v1

    div-int/2addr v7, v11

    :cond_533
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iget v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v5, v3

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_53e

    const/4 v10, 0x1

    goto :goto_53f

    :cond_53e
    const/4 v10, 0x0

    :goto_53f
    if-eqz v10, :cond_54b

    iget-object v1, v4, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_54b

    const/16 v29, 0x1c

    :cond_54b
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v9, 0x18

    if-eq v1, v9, :cond_5d5

    const/16 v6, 0x1a

    if-eq v1, v6, :cond_5d5

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_55b

    goto/16 :goto_5d5

    :cond_55b
    const/16 v2, 0x19

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int v3, v1, v3

    const/16 v5, 0x306

    add-int/lit8 v11, v29, 0x7c

    const/16 v7, 0x1c

    const/16 v8, 0x1c

    const/4 v9, 0x4

    move-object/from16 v1, p1

    move v4, v14

    move v6, v11

    const/16 v15, 0x60

    const/16 v17, 0xc

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int v3, v1, v3

    const/16 v5, 0x33e

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v11, v1, 0x340

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_5a1

    const/16 v1, 0xc8

    const/16 v13, 0xc8

    goto :goto_5a5

    :cond_5a1
    const/16 v1, 0xe4

    const/16 v13, 0xe4

    :goto_5a5
    if-eqz v10, :cond_64e

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    add-int/lit8 v1, v1, 0xc

    :goto_5ab
    iget v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    add-int/lit8 v3, v2, -0xb

    if-gt v1, v3, :cond_64e

    add-int/lit8 v10, v1, 0x60

    add-int/lit8 v3, v2, -0xb

    if-le v10, v3, :cond_5bc

    add-int/lit8 v2, v2, -0xb

    sub-int/2addr v2, v1

    move v7, v2

    goto :goto_5be

    :cond_5bc
    const/16 v7, 0x60

    :goto_5be
    if-lez v7, :cond_5d3

    const/16 v2, 0x19

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int v3, v1, v3

    const/16 v8, 0x1c

    const/4 v9, 0x3

    move-object/from16 v1, p1

    move v4, v14

    move v5, v11

    move v6, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_5d3
    move v1, v10

    goto :goto_5ab

    :cond_5d5
    :goto_5d5
    const/16 v15, 0x60

    const/16 v17, 0xc

    const/16 v2, 0x19

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int v4, v1, v3

    const/16 v5, 0x322

    add-int/lit8 v11, v29, 0x7c

    const/16 v7, 0x1c

    const/16 v8, 0x1c

    const/4 v9, 0x4

    move-object/from16 v1, p1

    move v3, v13

    move v6, v11

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int v4, v1, v3

    const/16 v5, 0x2ea

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_61a

    const/16 v1, 0x3c8

    const/16 v14, 0x3c8

    goto :goto_61e

    :cond_61a
    const/16 v1, 0x3e4

    const/16 v14, 0x3e4

    :goto_61e
    if-eqz v10, :cond_64e

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    add-int/lit8 v1, v1, 0xc

    :goto_624
    iget v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    add-int/lit8 v3, v2, -0xb

    if-gt v1, v3, :cond_64e

    add-int/lit8 v10, v1, 0x60

    add-int/lit8 v3, v2, -0xb

    if-le v10, v3, :cond_635

    add-int/lit8 v2, v2, -0xb

    sub-int/2addr v2, v1

    move v8, v2

    goto :goto_637

    :cond_635
    const/16 v8, 0x60

    :goto_637
    if-lez v8, :cond_64c

    const/16 v2, 0x19

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int v4, v1, v3

    const/16 v7, 0x1c

    const/4 v9, 0x1

    move-object/from16 v1, p1

    move v3, v13

    move v5, v14

    move v6, v11

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_64c
    move v1, v10

    goto :goto_624

    :cond_64e
    return-void

    :cond_64f
    const/16 v5, 0x60

    const/16 v6, 0x1a

    const/16 v9, 0x18

    const/16 v17, 0xc

    const/16 v5, 0x7d1

    if-ne v7, v5, :cond_67a

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v5, v1, 0x286

    iget v1, v4, Lcom/cmyksoft/retroworld/Game;->intTime:I

    rem-int/2addr v1, v11

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v1, 0x72

    const/16 v2, 0x4e

    add-int/lit8 v4, v14, 0x1

    const/16 v7, 0xa

    const/16 v8, 0x8

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_67a
    const/16 v5, 0x38

    const/16 v21, 0x17

    if-ne v7, v5, :cond_881

    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_687

    const/4 v4, -0x1

    const/4 v10, -0x1

    goto :goto_688

    :cond_687
    const/4 v10, 0x1

    :goto_688
    if-eqz v3, :cond_68f

    const/16 v4, 0x2e

    const/16 v16, 0x2e

    goto :goto_691

    :cond_68f
    const/16 v16, 0x0

    :goto_691
    const/16 v18, 0x17

    const-wide/high16 v4, 0x4014000000000000L  # 5.0

    div-double/2addr v1, v4

    double-to-int v1, v1

    const/16 v9, 0x8

    rem-int/2addr v1, v9

    if-eqz v3, :cond_69d

    goto :goto_69f

    :cond_69d
    rsub-int/lit8 v1, v1, 0x7

    :goto_69f
    mul-int/lit8 v5, v1, 0x24

    const/16 v2, 0x4e

    add-int/lit8 v4, v14, 0x1

    const/16 v19, 0x7

    const/16 v7, 0x24

    const/16 v20, 0x17

    move-object/from16 v1, p1

    move v3, v13

    const/16 v23, 0x1a

    move/from16 v6, v16

    const/4 v11, 0x1

    const/4 v15, 0x5

    move/from16 v8, v20

    const/4 v11, 0x4

    const/16 v26, 0x1a

    const/16 v27, 0x8

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v3, 0x4030000000000000L  # 16.0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_6f7

    iget-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v5, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v5, v5, Lcom/cmyksoft/retroworld/Game;->player:Lcom/cmyksoft/retroworld/Player;

    iget-wide v5, v5, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_6d6

    const/4 v8, 0x1

    goto :goto_6d7

    :cond_6d6
    const/4 v8, 0x0

    :goto_6d7
    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    xor-int/2addr v3, v8

    if-eqz v3, :cond_6f7

    const-wide/high16 v3, 0x402a000000000000L  # 13.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_6e4

    const/4 v8, 0x1

    goto :goto_6f8

    :cond_6e4
    const-wide/high16 v3, 0x4024000000000000L  # 10.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_6ed

    const/16 v8, 0xb

    goto :goto_6f8

    :cond_6ed
    const-wide/high16 v3, 0x4010000000000000L  # 4.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_6f5

    const/4 v8, 0x2

    goto :goto_6f8

    :cond_6f5
    const/4 v8, 0x3

    goto :goto_6f8

    :cond_6f7
    const/4 v8, 0x0

    :goto_6f8
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_724

    const-wide/high16 v3, 0x4018000000000000L  # 6.0

    mul-double v1, v1, v3

    iget v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    if-lt v1, v15, :cond_70d

    const/4 v15, 0x1

    goto :goto_725

    :cond_70d
    if-eqz v1, :cond_721

    if-ne v1, v11, :cond_712

    goto :goto_721

    :cond_712
    const/4 v2, 0x1

    if-eq v1, v2, :cond_71e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_719

    goto :goto_71e

    :cond_719
    const/4 v2, 0x2

    if-ne v1, v2, :cond_724

    const/4 v15, 0x2

    goto :goto_725

    :cond_71e
    :goto_71e
    const/16 v15, 0xb

    goto :goto_725

    :cond_721
    :goto_721
    const/16 v15, 0xa

    goto :goto_725

    :cond_724
    move v15, v8

    :goto_725
    const/16 v1, 0xa

    if-lt v15, v1, :cond_77d

    const/16 v2, 0x4e

    add-int v3, v13, v10

    add-int/lit8 v4, v14, -0xd

    const/16 v5, 0xb4

    add-int/lit8 v6, v16, 0x17

    const/4 v9, 0x7

    const/16 v7, 0x24

    const/16 v8, 0x17

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v4, v14, -0x24

    const/16 v5, 0x120

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_748

    const/16 v6, 0x20

    goto :goto_749

    :cond_748
    const/4 v6, 0x0

    :goto_749
    const/16 v7, 0x24

    const/16 v8, 0x10

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/16 v1, 0xa

    const/16 v2, 0x4e

    if-ne v15, v1, :cond_76e

    const/16 v1, 0xd

    mul-int/lit8 v10, v10, 0xd

    sub-int v3, v13, v10

    add-int/lit8 v4, v14, -0x1e

    const/16 v5, 0x168

    const/16 v7, 0x17

    const/16 v8, 0x17

    const/4 v9, 0x7

    :goto_769
    move-object/from16 v1, p1

    move/from16 v6, v16

    goto :goto_7ca

    :cond_76e
    mul-int/lit8 v10, v10, 0x4

    sub-int v3, v13, v10

    add-int/lit8 v4, v14, -0x1d

    const/16 v5, 0x120

    const/16 v6, 0x40

    const/16 v7, 0x14

    const/16 v8, 0x1b

    goto :goto_7c7

    :cond_77d
    if-nez v15, :cond_7cf

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v3, 0x4031000000000000L  # 17.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L  # 10.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/2addr v1, v11

    sget-object v2, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_790

    goto :goto_792

    :cond_790
    rsub-int/lit8 v1, v1, 0x3

    :goto_792
    aget v11, v2, v1

    mul-int/lit8 v5, v11, 0x24

    const/16 v2, 0x4e

    add-int v3, v13, v10

    add-int/lit8 v4, v14, -0xd

    add-int/lit8 v6, v16, 0x17

    const/4 v9, 0x7

    const/16 v7, 0x24

    const/16 v8, 0x17

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v4, v14, -0x24

    const/16 v5, 0xfc

    add-int/lit8 v6, v16, 0x1e

    const/16 v8, 0x10

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/4 v1, 0x3

    mul-int/lit8 v11, v11, 0x3

    rsub-int/lit8 v9, v11, 0x8

    mul-int v10, v10, v9

    add-int v3, v13, v10

    add-int/lit8 v4, v14, -0x7

    const/16 v5, 0x168

    add-int/lit8 v6, v16, 0x1a

    const/16 v7, 0x1c

    const/16 v8, 0x14

    :goto_7c7
    const/4 v9, 0x7

    move-object/from16 v1, p1

    :goto_7ca
    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    goto/16 :goto_880

    :cond_7cf
    const/4 v1, 0x1

    if-ne v15, v1, :cond_80e

    const/16 v2, 0x4e

    add-int v3, v13, v10

    add-int/lit8 v4, v14, -0xd

    const/16 v5, 0x6c

    add-int/lit8 v6, v16, 0x17

    const/4 v9, 0x7

    const/16 v7, 0x24

    const/16 v8, 0x17

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v4, v14, -0x24

    const/16 v5, 0x120

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_7f1

    const/16 v6, 0x20

    goto :goto_7f2

    :cond_7f1
    const/4 v6, 0x0

    :goto_7f2
    const/16 v7, 0x24

    const/16 v8, 0x10

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/16 v2, 0x4e

    const/4 v1, 0x2

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v13, v10

    add-int/lit8 v4, v14, -0x15

    const/16 v5, 0x168

    const/16 v7, 0x17

    const/16 v8, 0x17

    goto/16 :goto_769

    :cond_80e
    const/4 v1, 0x2

    if-ne v15, v1, :cond_853

    const/16 v2, 0x4e

    mul-int/lit8 v1, v10, 0x2

    add-int v3, v13, v1

    add-int/lit8 v4, v14, -0xd

    const/16 v5, 0x90

    add-int/lit8 v6, v16, 0x17

    const/4 v9, 0x7

    const/16 v7, 0x24

    const/16 v8, 0x17

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v4, v14, -0x24

    const/16 v5, 0x120

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_834

    const/16 v1, 0x30

    const/16 v6, 0x30

    goto :goto_836

    :cond_834
    const/16 v6, 0x10

    :goto_836
    const/16 v7, 0x24

    const/16 v8, 0x10

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/16 v2, 0x4e

    mul-int/lit8 v10, v10, 0xc

    add-int v3, v13, v10

    add-int/lit8 v4, v14, -0x21

    const/16 v5, 0x168

    rsub-int/lit8 v6, v16, 0x2e

    const/16 v7, 0x17

    const/16 v8, 0x17

    goto/16 :goto_7ca

    :cond_853
    const/4 v1, 0x3

    if-ne v15, v1, :cond_880

    const/16 v2, 0x4e

    add-int v3, v13, v10

    add-int/lit8 v4, v14, -0xd

    const/16 v5, 0xb4

    add-int/lit8 v6, v16, 0x17

    const/4 v9, 0x7

    const/16 v7, 0x24

    move-object/from16 v1, p1

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v4, v14, -0x24

    const/16 v5, 0x120

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_875

    const/16 v6, 0x20

    goto :goto_876

    :cond_875
    const/4 v6, 0x0

    :goto_876
    const/16 v7, 0x24

    const/16 v8, 0x10

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    goto/16 :goto_7ca

    :cond_880
    :goto_880
    return-void

    :cond_881
    const/4 v11, 0x4

    const/4 v15, 0x5

    const/16 v26, 0x1a

    const/16 v27, 0x8

    const/16 v5, 0x39

    if-ne v7, v5, :cond_909

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_8a0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_89e

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v1, v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_89c

    const/4 v8, -0x1

    goto :goto_89d

    :cond_89c
    const/4 v8, 0x1

    :goto_89d
    add-int/2addr v13, v8

    :cond_89e
    const/4 v5, 0x0

    goto :goto_8ae

    :cond_8a0
    if-eq v1, v2, :cond_8ac

    if-ne v1, v15, :cond_8a5

    goto :goto_8ac

    :cond_8a5
    if-ne v1, v11, :cond_89e

    const/16 v1, 0xc0

    const/16 v5, 0xc0

    goto :goto_8ae

    :cond_8ac
    :goto_8ac
    const/16 v5, 0x60

    :goto_8ae
    const/16 v2, 0x4e

    add-int/lit8 v4, v14, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x60

    const/16 v8, 0x60

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-ne v1, v11, :cond_908

    if-ne v1, v11, :cond_8d7

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v1, :cond_8d7

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iget-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    sub-double v3, v3, v18

    cmpl-double v5, v1, v3

    if-gez v5, :cond_8d6

    cmpg-double v3, v1, v18

    if-gtz v3, :cond_8d7

    :cond_8d6
    return-void

    :cond_8d7
    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v1, :cond_8de

    const/16 v6, 0xf

    goto :goto_8f4

    :cond_8de
    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x4044000000000000L  # 40.0

    rem-double/2addr v1, v3

    const-wide v3, 0x4042800000000000L  # 37.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_8f3

    const/16 v1, 0x1e

    const/16 v6, 0x1e

    goto :goto_8f4

    :cond_8f3
    const/4 v6, 0x0

    :goto_8f4
    const/16 v2, 0x4e

    const/16 v1, 0xf

    add-int/lit8 v3, v13, -0xf

    add-int/lit8 v4, v14, -0x2b

    const/16 v5, 0x180

    const/16 v7, 0x16

    const/16 v8, 0xf

    const/4 v9, 0x7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_908
    return-void

    :cond_909
    const/16 v5, 0x3a

    if-ne v7, v5, :cond_ac9

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-eqz v1, :cond_a76

    if-eq v1, v15, :cond_a76

    const/4 v2, 0x3

    if-ne v1, v2, :cond_924

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_922

    :goto_920
    const/4 v8, 0x1

    goto :goto_92c

    :cond_922
    const/4 v8, 0x0

    goto :goto_92c

    :cond_924
    const/4 v2, 0x2

    iget-wide v3, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v1, v3

    rem-int/2addr v1, v2

    if-nez v1, :cond_922

    goto :goto_920

    :goto_92c
    if-eqz v8, :cond_94a

    const/16 v2, 0x4e

    add-int/lit8 v3, v13, -0x17

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x26

    const/16 v8, 0x25

    const/4 v10, 0x7

    move-object/from16 v1, p1

    move v4, v14

    const/16 v16, 0x18

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v3, v13, 0x19

    const/16 v5, 0x26

    const/16 v7, 0x28

    const/4 v9, 0x7

    goto :goto_964

    :cond_94a
    const/16 v16, 0x18

    const/16 v2, 0x4e

    add-int/lit8 v3, v13, -0x17

    const/4 v5, 0x0

    const/16 v6, 0x26

    const/16 v7, 0x26

    const/16 v8, 0x25

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v3, v13, 0x19

    const/16 v5, 0x26

    const/16 v7, 0x28

    :goto_964
    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a1a

    if-ne v1, v11, :cond_970

    goto/16 :goto_a1a

    :cond_970
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a76

    const/16 v2, 0x4e

    add-int/lit8 v4, v14, -0xb

    const/16 v5, 0x4e

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_982

    const/16 v1, 0x27

    const/16 v6, 0x27

    goto :goto_983

    :cond_982
    const/4 v6, 0x0

    :goto_983
    const/16 v7, 0x1e

    const/16 v8, 0x27

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Game;->time:D

    div-double v1, v1, v18

    double-to-int v1, v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/16 v2, 0x4e

    if-nez v1, :cond_9d9

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_9a1

    const/16 v21, -0x17

    :cond_9a1
    sub-int v3, v13, v21

    add-int/lit8 v4, v14, -0xe

    const/16 v5, 0xb9

    if-eqz v1, :cond_9ac

    const/16 v6, 0x18

    goto :goto_9ad

    :cond_9ac
    const/4 v6, 0x0

    :goto_9ad
    const/16 v7, 0x1d

    const/16 v8, 0x18

    const/4 v9, 0x7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/16 v2, 0x4e

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_9bf

    const/4 v9, -0x8

    goto :goto_9c1

    :cond_9bf
    const/16 v9, 0x8

    :goto_9c1
    add-int v3, v13, v9

    const/4 v4, 0x3

    add-int/lit8 v4, v14, -0x3

    const/16 v5, 0xd6

    if-eqz v1, :cond_9cf

    const/16 v1, 0x14

    const/16 v6, 0x14

    goto :goto_9d0

    :cond_9cf
    const/4 v6, 0x0

    :goto_9d0
    const/16 v7, 0x16

    const/16 v8, 0x14

    const/4 v9, 0x7

    move-object/from16 v1, p1

    goto/16 :goto_a73

    :cond_9d9
    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_9e0

    const/16 v3, -0x16

    goto :goto_9e2

    :cond_9e0
    const/16 v3, 0x16

    :goto_9e2
    sub-int v3, v13, v3

    add-int/lit8 v4, v14, -0xc

    const/16 v5, 0x6e

    if-eqz v1, :cond_9ef

    const/16 v1, 0x38

    const/16 v6, 0x38

    goto :goto_9f3

    :cond_9ef
    const/16 v1, 0x27

    const/16 v6, 0x27

    :goto_9f3
    const/16 v7, 0x1c

    const/16 v8, 0x11

    const/4 v9, 0x7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/16 v2, 0x4e

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_a06

    const/16 v3, -0xa

    goto :goto_a08

    :cond_a06
    const/16 v3, 0xa

    :goto_a08
    add-int/2addr v3, v13

    const/16 v5, 0xec

    if-eqz v1, :cond_a10

    const/16 v6, 0x17

    goto :goto_a11

    :cond_a10
    const/4 v6, 0x0

    :goto_a11
    const/16 v7, 0x15

    const/16 v8, 0x17

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v4, v14

    goto :goto_a73

    :cond_a1a
    :goto_a1a
    const/16 v2, 0x4e

    add-int/lit8 v4, v14, -0xb

    const/16 v5, 0x6c

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/16 v8, 0x27

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/16 v2, 0x4e

    if-nez v1, :cond_a56

    add-int/lit8 v3, v13, -0x12

    add-int/lit8 v10, v14, -0x10

    const/16 v5, 0x8a

    const/4 v6, 0x0

    const/16 v7, 0x15

    const/16 v8, 0x26

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v4, v10

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v3, v13, 0x14

    const/16 v5, 0x9f

    const/4 v6, 0x6

    const/16 v7, 0x1a

    const/16 v8, 0x20

    goto :goto_a73

    :cond_a56
    add-int/lit8 v3, v13, -0x14

    add-int/lit8 v10, v14, -0x10

    const/16 v5, 0x8a

    const/16 v6, 0x2c

    const/16 v7, 0x1a

    const/16 v8, 0x20

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v4, v10

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v3, v13, 0x12

    const/16 v5, 0xa4

    const/16 v6, 0x26

    const/16 v7, 0x15

    const/16 v8, 0x26

    :goto_a73
    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_a76
    const/16 v1, 0x20

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_a7a
    if-ge v10, v1, :cond_aac

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v1, Lcom/cmyksoft/retroworld/Game;->particleX:[D

    aget-wide v3, v2, v10

    const-wide/16 v5, 0x0

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_aa7

    const/16 v2, 0x4e

    double-to-int v3, v3

    iget v4, v1, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/cmyksoft/retroworld/Game;->particleY:[D

    aget-wide v5, v4, v10

    double-to-int v4, v5

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int/2addr v4, v1

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v5, v1, 0x6d

    const/16 v6, 0x4a

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/4 v8, 0x1

    :cond_aa7
    add-int/lit8 v10, v10, 0x1

    const/16 v1, 0x20

    goto :goto_a7a

    :cond_aac
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_ab5

    if-eq v1, v11, :cond_ab5

    if-eqz v8, :cond_ac8

    :cond_ab5
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v1, v1

    const/16 v2, 0x20

    div-int/2addr v1, v2

    iget-object v2, v12, Lcom/cmyksoft/retroworld/Graphics;->gameGraphics:Lcom/cmyksoft/retroworld/GameGraphics;

    add-int/lit8 v3, v1, -0x2

    iget v4, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    const/4 v5, 0x2

    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/cmyksoft/retroworld/GameGraphics;->drawGameField(IIII)V

    :cond_ac8
    return-void

    :cond_ac9
    const/16 v5, 0x3b

    if-ne v7, v5, :cond_b06

    const/16 v2, 0x19

    neg-int v4, v10

    const/4 v5, 0x3

    add-int/lit8 v1, v14, -0x24

    iget v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int/2addr v1, v3

    add-int v6, v1, v10

    const/16 v7, 0x39b

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/16 v10, 0x40

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move v3, v13

    const/4 v12, 0x4

    move v11, v15

    invoke-virtual/range {v1 .. v11}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIIIII)V

    sget-object v1, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v2, v2, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/2addr v2, v12

    aget v1, v1, v2

    const/16 v2, 0x4e

    mul-int/lit8 v5, v1, 0x43

    const/4 v6, 0x0

    const/16 v7, 0x43

    const/16 v8, 0x60

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_b06
    const/4 v12, 0x4

    const/16 v5, 0x3c

    if-ne v7, v5, :cond_b13

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcom/cmyksoft/retroworld/AdditionalBoss;->draw(Lcom/cmyksoft/retroworld/Graphics;)V

    return-void

    :cond_b13
    move-object/from16 v11, p1

    const/16 v5, 0x3d

    if-ne v7, v5, :cond_b8d

    sget-object v3, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x7

    rem-int/2addr v1, v12

    aget v1, v3, v1

    mul-int/lit8 v5, v1, 0x57

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_b2c

    const/16 v1, 0x5f

    const/16 v6, 0x5f

    goto :goto_b2d

    :cond_b2c
    const/4 v6, 0x0

    :goto_b2d
    const/16 v2, 0x4e

    add-int/lit8 v4, v14, 0x1

    const/16 v7, 0x57

    const/16 v8, 0x5f

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_b68

    const/16 v2, 0x4e

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_b4b

    goto :goto_b4d

    :cond_b4b
    const/16 v21, -0x16

    :goto_b4d
    add-int v3, v13, v21

    add-int/lit8 v4, v14, -0x1e

    const/16 v5, 0x15f

    if-eqz v1, :cond_b5a

    const/16 v1, 0x2e

    const/16 v6, 0x2e

    goto :goto_b5e

    :cond_b5a
    const/16 v1, 0x25

    const/16 v6, 0x25

    :goto_b5e
    const/16 v7, 0xa

    const/4 v8, 0x6

    const/4 v9, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    goto :goto_b8c

    :cond_b68
    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_b8c

    const/16 v2, 0x4e

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_b7a

    goto :goto_b7c

    :cond_b7a
    const/16 v21, -0x16

    :goto_b7c
    add-int v3, v13, v21

    add-int/lit8 v4, v14, -0x1e

    const/16 v5, 0x15f

    if-eqz v1, :cond_b87

    const/16 v6, 0x1c

    goto :goto_b5e

    :cond_b87
    const/16 v1, 0x13

    const/16 v6, 0x13

    goto :goto_b5e

    :cond_b8c
    :goto_b8c
    return-void

    :cond_b8d
    const/16 v1, 0x3e

    if-ne v7, v1, :cond_bed

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x6

    if-ne v1, v12, :cond_b9b

    const/16 v28, 0x2

    goto :goto_ba2

    :cond_b9b
    if-ne v1, v15, :cond_ba0

    const/16 v28, 0x1

    goto :goto_ba2

    :cond_ba0
    move/from16 v28, v1

    :goto_ba2
    mul-int/lit8 v5, v28, 0x3e

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_bad

    const/16 v1, 0x43

    const/16 v6, 0x43

    goto :goto_bae

    :cond_bad
    const/4 v6, 0x0

    :goto_bae
    const/16 v2, 0x4e

    add-int/lit8 v4, v14, 0x2

    const/16 v7, 0x3e

    const/16 v8, 0x43

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-eq v1, v12, :cond_bc7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_bc5

    goto :goto_bc7

    :cond_bc5
    const/4 v15, 0x0

    goto :goto_bc9

    :cond_bc7
    :goto_bc7
    const/16 v15, 0xb

    :goto_bc9
    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_bcf

    const/16 v29, 0x16

    :cond_bcf
    add-int v5, v15, v29

    if-eqz v1, :cond_bd6

    const/16 v9, 0x1a

    goto :goto_bd8

    :cond_bd6
    const/16 v9, -0x1a

    :goto_bd8
    add-int v3, v13, v9

    const/16 v2, 0x4e

    add-int/lit8 v14, v14, -0x19

    sub-int v4, v14, v28

    const/16 v6, 0x86

    const/16 v7, 0xb

    const/16 v8, 0x9

    const/4 v9, 0x7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_bed
    const/16 v1, 0x3f

    if-ne v7, v1, :cond_cdd

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    double-to-int v10, v1

    if-gez v10, :cond_c00

    sget-object v1, Lcom/cmyksoft/retroworld/Enemy;->BOSS_8_ROTATE_STEP_NUMBER:[[I

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    aget-object v1, v1, v2

    neg-int v2, v10

    aget v8, v1, v2

    goto :goto_c12

    :cond_c00
    if-ge v10, v15, :cond_c04

    move v8, v10

    goto :goto_c12

    :cond_c04
    const/16 v1, 0xa

    if-ge v10, v1, :cond_c0a

    const/4 v8, 0x5

    goto :goto_c12

    :cond_c0a
    const/16 v1, 0xf

    if-ge v10, v1, :cond_c11

    add-int/lit8 v8, v10, -0x5

    goto :goto_c12

    :cond_c11
    const/4 v8, 0x0

    :goto_c12
    if-ltz v10, :cond_c1a

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_c1a

    rsub-int/lit8 v8, v8, 0x15

    :cond_c1a
    rem-int/lit8 v1, v8, 0xc

    mul-int/lit8 v5, v1, 0x38

    div-int/lit8 v8, v8, 0xc

    mul-int/lit8 v8, v8, 0x27

    add-int/lit8 v6, v8, 0x4b

    const/16 v2, 0x4e

    add-int/lit8 v15, v14, 0x1

    const/16 v7, 0x38

    const/16 v8, 0x27

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v15

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v1, :cond_c52

    const-wide/high16 v1, 0x403e000000000000L  # 30.0

    iget-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->damageTime:D

    sub-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    const/16 v3, 0xd

    if-le v1, v3, :cond_c46

    const/16 v1, 0xd

    :cond_c46
    sget-object v2, Lcom/cmyksoft/retroworld/Enemy;->BOSS_8_SWING_HEAD_NUMBER:[I

    aget v1, v2, v1

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_c50

    rsub-int/lit8 v1, v1, 0x4

    :cond_c50
    move v9, v1

    goto :goto_c53

    :cond_c52
    const/4 v9, 0x2

    :goto_c53
    mul-int/lit8 v6, v9, 0xc

    const/16 v2, 0x4e

    add-int/lit8 v4, v14, -0x51

    const/16 v5, 0x2be

    const/16 v7, 0x2e

    const/16 v8, 0xc

    const/16 v16, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v12, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    mul-int/lit8 v5, v1, 0x36

    add-int/lit8 v4, v14, -0x24

    const/16 v6, 0x1e

    const/16 v7, 0x36

    const/16 v8, 0x2d

    const/4 v9, 0x7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/4 v1, 0x2

    if-eq v12, v1, :cond_c80

    move v14, v15

    :cond_c80
    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    mul-int/lit8 v6, v2, 0xe

    const/16 v2, 0x4e

    mul-int/lit8 v9, v12, 0x2

    add-int/2addr v13, v9

    add-int/lit8 v12, v13, -0x4

    add-int/lit8 v4, v14, -0x77

    const/16 v5, 0x2ec

    const/16 v7, 0x28

    const/16 v8, 0xe

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v12

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    if-ltz v10, :cond_cc1

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v1, :cond_cb0

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->damageTime:D

    const-wide/high16 v3, 0x4034000000000000L  # 20.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_cb0

    goto :goto_cba

    :cond_cb0
    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v1, v1

    const/4 v2, 0x4

    rem-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v29, v1, 0x1

    :goto_cba
    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-nez v1, :cond_cca

    rsub-int/lit8 v29, v29, 0xc

    goto :goto_cca

    :cond_cc1
    sget-object v1, Lcom/cmyksoft/retroworld/Enemy;->BOSS_8_ROTATE_HEAD_NUMBER:[[I

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    aget-object v1, v1, v2

    neg-int v2, v10

    aget v29, v1, v2

    :cond_cca
    :goto_cca
    mul-int/lit8 v5, v29, 0x36

    const/16 v2, 0x4e

    add-int/lit8 v4, v14, -0x5d

    const/4 v6, 0x0

    const/16 v7, 0x36

    const/16 v8, 0x1e

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v12

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_cdd
    const/16 v1, 0x12

    if-eq v7, v1, :cond_e49

    const/16 v1, 0x13

    if-ne v7, v1, :cond_ce7

    goto/16 :goto_e49

    :cond_ce7
    const/16 v1, 0x7d4

    if-ne v7, v1, :cond_d07

    iget v1, v4, Lcom/cmyksoft/retroworld/Game;->intTime:I

    const/4 v2, 0x4

    rem-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x12

    const/4 v2, 0x1

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0xdf

    const/16 v2, 0x4e

    const/4 v1, 0x2

    add-int/lit8 v4, v14, 0x2

    const/16 v7, 0x11

    const/16 v8, 0x11

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_d07
    const/16 v1, 0x7d3

    if-ne v7, v1, :cond_d2c

    sget-object v1, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v2, v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    const/4 v4, 0x4

    rem-int/2addr v2, v4

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x1b

    add-int/lit8 v5, v1, 0x49

    const/16 v6, 0xdf

    const/16 v2, 0x4e

    add-int/lit8 v4, v14, 0x3

    const/16 v7, 0x1a

    const/16 v8, 0x1a

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_d2c
    const/16 v1, 0x40

    if-ne v7, v1, :cond_dd4

    const/16 v2, 0x4e

    if-eqz v3, :cond_d4d

    const/16 v5, 0x58

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_d3f

    const/16 v1, 0x6f

    const/16 v6, 0x6f

    goto :goto_d40

    :cond_d3f
    const/4 v6, 0x0

    :goto_d40
    const/16 v7, 0x58

    const/16 v8, 0x6f

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    :goto_d49
    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    goto :goto_d98

    :cond_d4d
    const/4 v5, 0x0

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_d57

    const/16 v1, 0x6f

    const/16 v6, 0x6f

    goto :goto_d58

    :cond_d57
    const/4 v6, 0x0

    :goto_d58
    const/16 v7, 0x58

    const/16 v8, 0x6f

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    sget-object v1, Lcom/cmyksoft/retroworld/Enemy;->BOSS_9_STICK_FRAME:[I

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v2, v2, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v2, v2

    array-length v3, v1

    rem-int/2addr v2, v3

    aget v1, v1, v2

    const/16 v2, 0x4e

    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_d78

    const/16 v4, 0x22

    goto :goto_d7a

    :cond_d78
    const/16 v4, -0x21

    :goto_d7a
    add-int/2addr v4, v13

    add-int/lit8 v5, v14, -0x47

    const/16 v6, 0xb1

    mul-int/lit8 v1, v1, 0x16

    const/4 v7, 0x1

    add-int/2addr v1, v7

    if-eqz v3, :cond_d87

    const/16 v29, 0x6f

    :cond_d87
    add-int v7, v1, v29

    const/16 v8, 0x15

    const/16 v9, 0x15

    const/4 v10, 0x7

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_d49

    :goto_d98
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v3, 0x4024000000000000L  # 10.0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_dd3

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    add-int/2addr v13, v1

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_da9

    const/16 v24, -0x10

    :cond_da9
    add-int v3, v13, v24

    add-int/lit8 v14, v14, -0x14

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    div-int/2addr v1, v2

    sub-int v4, v14, v1

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v5, 0x4014000000000000L  # 5.0

    cmpg-double v7, v1, v5

    const/16 v2, 0x4e

    const/16 v5, 0xf5

    if-gtz v7, :cond_dc7

    const/4 v6, 0x1

    const/16 v7, 0xa

    const/16 v8, 0xe

    goto :goto_dcd

    :cond_dc7
    const/16 v6, 0xf

    const/16 v7, 0xa

    const/16 v8, 0xa

    :goto_dcd
    const/4 v9, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_dd3
    return-void

    :cond_dd4
    const/16 v1, 0x7d2

    if-ne v7, v1, :cond_e18

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-eqz v1, :cond_e04

    const/4 v2, 0x2

    if-ne v1, v2, :cond_de0

    goto :goto_e04

    :cond_de0
    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/high16 v3, 0x4014000000000000L  # 5.0

    cmpg-double v5, v1, v3

    const/16 v2, 0x4e

    if-gez v5, :cond_df6

    const/4 v1, 0x4

    add-int/lit8 v4, v14, 0x4

    const/16 v5, 0xea

    const/16 v6, 0x29

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto :goto_e10

    :cond_df6
    const/16 v5, 0xea

    const/16 v6, 0x1a

    const/16 v7, 0xe

    const/16 v8, 0xe

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    goto :goto_e14

    :cond_e04
    :goto_e04
    const/16 v2, 0x4e

    const/4 v1, 0x2

    add-int/lit8 v4, v14, 0x2

    const/16 v5, 0xea

    const/4 v6, 0x1

    const/16 v7, 0xa

    const/16 v8, 0x14

    :goto_e10
    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    :goto_e14
    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_e18
    const/16 v1, 0x1f

    if-ne v7, v1, :cond_e41

    sget-object v1, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    iget v2, v4, Lcom/cmyksoft/retroworld/Game;->intTime:I

    const/4 v3, 0x4

    rem-int/2addr v2, v3

    aget v1, v1, v2

    rem-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x10

    add-int/lit16 v5, v2, 0x220

    const/4 v2, 0x2

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    const/16 v9, 0x20

    add-int/lit8 v6, v1, 0x20

    const/16 v2, 0x16

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    return-void

    :cond_e41
    move v3, v13

    move v4, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2b7

    :cond_e49
    :goto_e49
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v4, 0x401c000000000000L  # 7.0

    mul-double v4, v4, v2

    double-to-int v4, v4

    rem-int/lit16 v9, v4, 0x80

    const/16 v4, 0x13

    if-ne v7, v4, :cond_e5f

    rem-int/lit8 v2, v9, 0x40

    add-int/2addr v1, v2

    move v12, v1

    const/16 v8, 0x40

    goto :goto_e6b

    :cond_e5f
    const-wide/high16 v4, 0x401c000000000000L  # 7.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    const/16 v8, 0x40

    rem-int/2addr v2, v8

    rsub-int/lit8 v2, v2, 0x3f

    add-int/2addr v1, v2

    move v12, v1

    :goto_e6b
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    move v13, v1

    :goto_e6e
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-gt v13, v1, :cond_ecf

    div-int/lit8 v1, v9, 0x40

    if-nez v1, :cond_e78

    const/4 v1, 0x1

    goto :goto_e79

    :cond_e78
    const/4 v1, 0x0

    :goto_e79
    move v14, v1

    move v15, v12

    :goto_e7b
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    if-gt v15, v1, :cond_ec8

    sub-int v3, v15, v16

    sub-int v1, v13, v10

    if-eqz v14, :cond_e88

    add-int/lit8 v1, v1, -0x10

    goto :goto_e8a

    :cond_e88
    add-int/lit8 v1, v1, 0x10

    :goto_e8a
    const-wide v4, 0x3fa999999999999aL  # 0.05

    int-to-double v6, v15

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4020000000000000L  # 8.0

    mul-double v4, v4, v6

    double-to-int v2, v4

    add-int v4, v1, v2

    const/4 v1, -0x1

    if-lt v3, v1, :cond_ebf

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v2, v1, Lcom/cmyksoft/retroworld/Game;->screenWidth:I

    if-gt v3, v2, :cond_ebf

    const/4 v2, -0x1

    if-lt v4, v2, :cond_ebf

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    if-gt v4, v1, :cond_ebf

    const/16 v2, 0x19

    const/16 v5, 0x397

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/16 v17, 0x3

    move-object/from16 v1, p1

    const/16 v18, 0x40

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/cmyksoft/retroworld/Graphics;->drawFastBitmap(IIIIIII)V

    goto :goto_ec1

    :cond_ebf
    const/16 v18, 0x40

    :goto_ec1
    xor-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x40

    const/16 v8, 0x40

    goto :goto_e7b

    :cond_ec8
    const/16 v18, 0x40

    add-int/lit8 v13, v13, 0x40

    const/16 v8, 0x40

    goto :goto_e6e

    :cond_ecf
    return-void

    :cond_ed0
    :goto_ed0
    move-object v11, v12

    const/4 v15, 0x5

    const/16 v16, 0x18

    const/16 v27, 0x8

    iget-wide v1, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v3, 0x3fe8000000000000L  # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    if-lt v1, v2, :cond_ef6

    if-eq v1, v2, :cond_ef4

    if-eq v1, v15, :cond_ef4

    const/4 v2, 0x7

    if-ne v1, v2, :cond_eea

    goto :goto_ef4

    :cond_eea
    const/4 v2, 0x4

    if-ne v1, v2, :cond_eef

    const/4 v15, 0x0

    goto :goto_ef7

    :cond_eef
    const/4 v2, 0x6

    if-ne v1, v2, :cond_ef6

    const/4 v15, 0x3

    goto :goto_ef7

    :cond_ef4
    :goto_ef4
    const/4 v15, 0x1

    goto :goto_ef7

    :cond_ef6
    move v15, v1

    :goto_ef7
    const/16 v1, 0x14

    if-ne v7, v1, :cond_f00

    const/16 v1, 0x150

    :goto_efd
    const/16 v2, 0x70

    goto :goto_f0b

    :cond_f00
    const/16 v1, 0x15

    if-ne v7, v1, :cond_f07

    const/16 v1, 0x1eb

    goto :goto_efd

    :cond_f07
    const/16 v1, 0x1eb

    const/16 v2, 0xa0

    :goto_f0b
    const/16 v3, 0x1f

    mul-int/lit8 v15, v15, 0x1f

    add-int/2addr v1, v15

    iget-boolean v4, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v4, :cond_f17

    const/16 v8, 0x18

    goto :goto_f18

    :cond_f17
    const/4 v8, 0x0

    :goto_f18
    add-int/2addr v2, v8

    add-int/lit8 v14, v14, 0x1

    move v5, v1

    move v6, v2

    move v3, v13

    move v4, v14

    const/16 v7, 0x1f

    goto :goto_f55

    :cond_f22
    :goto_f22
    move-object v11, v12

    const/16 v16, 0x18

    const/16 v18, 0x40

    iget-wide v3, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    rem-int/lit8 v3, v3, 0x11

    if-nez v3, :cond_f33

    const/4 v1, 0x2

    goto :goto_f39

    :cond_f33
    const-wide/high16 v3, 0x401c000000000000L  # 7.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    :goto_f39
    add-int/lit8 v7, v7, -0x6

    const/4 v2, 0x4

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v1, v7

    const/16 v2, 0x1c

    mul-int/lit8 v1, v1, 0x1c

    add-int/lit16 v1, v1, 0x82

    iget-boolean v3, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_f4c

    const/16 v8, 0x18

    goto :goto_f4d

    :cond_f4c
    const/4 v8, 0x0

    :goto_f4d
    add-int/lit8 v8, v8, 0x40

    move v5, v1

    move v6, v8

    move v3, v13

    move v4, v14

    const/16 v7, 0x1c

    :goto_f55
    const/16 v8, 0x18

    goto/16 :goto_2b7

    :cond_f59
    :goto_f59
    move-object v11, v12

    const/16 v3, 0xd

    const/16 v9, 0x20

    const/4 v15, 0x5

    const/16 v16, 0x18

    sget-object v5, Lcom/cmyksoft/retroworld/BasicGraphics;->FOUR_FRAME_AS_SECOND:[I

    const-wide/high16 v17, 0x4010000000000000L  # 4.0

    div-double v1, v1, v17

    double-to-int v1, v1

    const/4 v2, 0x4

    rem-int/2addr v1, v2

    aget v1, v5, v1

    mul-int/lit8 v1, v1, 0x28

    iget-boolean v2, v0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_f74

    const/4 v5, 0x0

    goto :goto_f76

    :cond_f74
    const/16 v5, 0x20

    :goto_f76
    const/4 v6, 0x2

    if-ne v7, v6, :cond_f8d

    add-int/lit16 v1, v1, 0xc8

    :cond_f7b
    move v6, v5

    move v3, v13

    move v4, v14

    const/16 v7, 0x28

    const/16 v8, 0x20

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v28, 0x0

    move v5, v1

    goto/16 :goto_1020

    :cond_f8d
    const/4 v6, 0x3

    if-ne v7, v6, :cond_fa4

    add-int/lit16 v1, v1, 0x168

    iget v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_f7b

    const/16 v1, 0x280

    move v6, v5

    move v3, v13

    move v4, v14

    const/16 v5, 0x280

    :goto_f9e
    const/16 v7, 0x28

    :goto_fa0
    const/16 v8, 0x20

    goto/16 :goto_2b7

    :cond_fa4
    const/4 v6, 0x1

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_fe7

    add-int/lit16 v1, v1, 0x208

    iget v4, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-lez v4, :cond_f7b

    if-ne v4, v6, :cond_fbb

    if-eqz v2, :cond_fb5

    const/4 v4, -0x7

    goto :goto_fb6

    :cond_fb5
    const/4 v4, 0x7

    :goto_fb6
    add-int/2addr v4, v13

    add-int/lit8 v6, v14, -0x8

    const/4 v15, 0x0

    goto :goto_fca

    :cond_fbb
    if-eqz v2, :cond_fbf

    const/4 v8, -0x5

    goto :goto_fc0

    :cond_fbf
    const/4 v8, 0x5

    :goto_fc0
    add-int v4, v13, v8

    add-int/lit8 v6, v14, -0x5

    const/16 v7, 0x13

    const/16 v3, 0x13

    const/16 v15, 0xd

    :goto_fca
    if-eqz v2, :cond_fcd

    goto :goto_fcf

    :cond_fcd
    const/16 v29, 0x20

    :goto_fcf
    add-int v15, v15, v29

    const/16 v2, 0x320

    move/from16 v29, v4

    move v10, v6

    move v4, v14

    const/16 v7, 0x28

    const/16 v8, 0x20

    const/16 v12, 0x320

    const/16 v28, 0x1

    move v6, v5

    move v5, v1

    move/from16 v30, v13

    move v13, v3

    move/from16 v3, v30

    goto :goto_1020

    :cond_fe7
    iget v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-lez v2, :cond_f7b

    const/16 v1, 0x2d0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1018

    iget-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/high16 v6, 0x4010000000000000L  # 4.0

    cmpg-double v8, v2, v6

    if-lez v8, :cond_1010

    const-wide/high16 v6, 0x4058000000000000L  # 96.0

    cmpl-double v8, v2, v6

    if-ltz v8, :cond_fff

    goto :goto_1010

    :cond_fff
    const-wide/high16 v6, 0x402e000000000000L  # 15.0

    cmpg-double v8, v2, v6

    if-gtz v8, :cond_1018

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    double-to-int v2, v2

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/2addr v13, v2

    goto :goto_1018

    :cond_1010
    :goto_1010
    const/16 v1, 0x78

    move v6, v5

    move v3, v13

    move v4, v14

    const/16 v5, 0x78

    goto :goto_f9e

    :cond_1018
    :goto_1018
    move v6, v5

    move v3, v13

    move v4, v14

    const/16 v5, 0x2d0

    const/16 v7, 0x18

    goto :goto_fa0

    :goto_1020
    if-lez v7, :cond_106b

    if-lez v8, :cond_106b

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-gez v1, :cond_1041

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-nez v1, :cond_1041

    if-eqz p2, :cond_1041

    const-wide v1, 0x406fe00000000000L  # 255.0

    move/from16 v17, v13

    iget-wide v13, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    mul-double v13, v13, v1

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    div-double/2addr v13, v1

    double-to-int v1, v13

    invoke-virtual {v11, v1}, Lcom/cmyksoft/retroworld/Graphics;->setAlpha(I)V

    goto :goto_1043

    :cond_1041
    move/from16 v17, v13

    :goto_1043
    const/16 v2, 0x19

    const/4 v9, 0x7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    if-eqz v28, :cond_105e

    const/16 v2, 0x19

    const/4 v9, 0x7

    move-object/from16 v1, p1

    move/from16 v3, v29

    move v4, v10

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v9}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_105e
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-gez v1, :cond_106b

    iget-boolean v1, v0, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-nez v1, :cond_106b

    if-eqz p2, :cond_106b

    invoke-virtual/range {p1 .. p1}, Lcom/cmyksoft/retroworld/Graphics;->resetColor()V

    :cond_106b
    return-void
.end method

.method public final enemyResponsiveness()V
    .registers 6

    iget v0, p0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v1, 0x38

    if-ne v0, v1, :cond_23

    iget-wide v0, p0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v2, p0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->player:Lcom/cmyksoft/retroworld/Player;

    iget-wide v2, v2, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget-boolean v1, p0, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_23

    iget v0, p0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget-wide v0, p0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput-wide v0, p0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_23
    return-void
.end method

.method public init()V
    .registers 17

    move-object/from16 v9, p0

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->checkLadder:Z

    const/4 v1, 0x0

    iput-object v1, v9, Lcom/cmyksoft/retroworld/Enemy;->additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->makeJump:Z

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float5:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-byte v1, v9, Lcom/cmyksoft/retroworld/Enemy;->windDirection:B

    iput-boolean v1, v9, Lcom/cmyksoft/retroworld/Enemy;->isMany:Z

    iget v4, v9, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    const-wide/high16 v5, 0x403c000000000000L  # 28.0

    const-wide/high16 v7, 0x4030000000000000L  # 16.0

    const-wide/high16 v14, 0x4034000000000000L  # 20.0

    const/4 v2, 0x3

    if-gt v4, v2, :cond_7f

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v7, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v5, 0x3ff8000000000000L  # 1.5

    iput-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    if-ne v4, v0, :cond_6e

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    :goto_68
    const-wide/high16 v0, 0x4038000000000000L  # 24.0

    :goto_6a
    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    goto/16 :goto_608

    :cond_6e
    if-ne v4, v2, :cond_608

    const-wide v2, 0x4062c00000000000L  # 150.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto/16 :goto_608

    :cond_7f
    const/16 v3, 0x3e9

    const-wide/high16 v14, 0x4028000000000000L  # 12.0

    const/4 v7, 0x6

    if-ne v4, v3, :cond_92

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v1, 0x4039000000000000L  # 25.0

    iput-wide v1, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput v7, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->makeJump:Z

    goto/16 :goto_608

    :cond_92
    const-wide/high16 v7, 0x4010000000000000L  # 4.0

    const/4 v3, 0x4

    const-wide/high16 v14, 0x402c000000000000L  # 14.0

    if-ne v4, v3, :cond_a5

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-wide v7, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    goto/16 :goto_608

    :cond_a5
    const/16 v7, 0x38

    const/16 v8, 0xa

    if-ne v4, v7, :cond_d6

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v12, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v0, 0x402e000000000000L  # 15.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4049000000000000L  # 50.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/16 v0, 0x3c

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v0, v0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const/16 v0, 0xf

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    const/16 v0, 0x28

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide/high16 v0, 0x4018000000000000L  # 6.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    :goto_ce
    iput v8, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iput v8, v0, Lcom/cmyksoft/retroworld/Game;->bossMaxLife:I

    goto/16 :goto_608

    :cond_d6
    const/16 v7, 0x39

    const/4 v2, 0x2

    if-ne v4, v7, :cond_f6

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide v3, 0x4046800000000000L  # 45.0

    iput-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide v3, 0x4056800000000000L  # 90.0

    iput-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const/16 v0, 0x19

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    goto :goto_ce

    :cond_f6
    const/16 v7, 0x7d0

    if-ne v4, v7, :cond_104

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    goto/16 :goto_608

    :cond_104
    const/16 v7, 0x3ea

    const-wide/high16 v14, 0x4020000000000000L  # 8.0

    if-ne v4, v7, :cond_115

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v0, 0x5

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    :goto_111
    const-wide/high16 v0, 0x4030000000000000L  # 16.0

    goto/16 :goto_6a

    :cond_115
    const/16 v7, 0x7d4

    if-ne v4, v7, :cond_126

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v0, 0x5

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x401c000000000000L  # 7.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x402a000000000000L  # 13.0

    goto/16 :goto_6a

    :cond_126
    const/4 v7, 0x5

    const-wide/high16 v14, 0x4008000000000000L  # 3.0

    if-ne v4, v7, :cond_145

    const/4 v0, 0x7

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4030000000000000L  # 16.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput-wide v12, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    neg-double v0, v12

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v0, 0x40b0000000000000L  # 4096.0

    :goto_141
    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    goto/16 :goto_608

    :cond_145
    const/4 v7, 0x6

    if-ne v4, v7, :cond_167

    iput v8, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    const-wide v0, 0x3fb999999999999aL  # 0.1

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v0, 0x4004000000000000L  # 2.5

    :goto_163
    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto/16 :goto_608

    :cond_167
    const/4 v7, 0x7

    if-ne v4, v7, :cond_179

    const/4 v0, 0x7

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto/16 :goto_608

    :cond_179
    const-wide/high16 v10, 0x4028000000000000L  # 12.0

    const-wide/high16 v14, 0x4034000000000000L  # 20.0

    const/16 v7, 0x8

    if-ne v4, v7, :cond_192

    const/4 v0, 0x7

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v10, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x400c000000000000L  # 3.5

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v0, -0x3ff4000000000000L  # -3.5

    :goto_18e
    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto/16 :goto_608

    :cond_192
    const/16 v10, 0x9

    if-ne v4, v10, :cond_1ad

    const/4 v10, 0x3

    iput v10, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    iput v10, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v2, 0x4045000000000000L  # 42.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v2, 0x4049000000000000L  # 50.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput-wide v12, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto/16 :goto_608

    :cond_1ad
    if-ne v4, v8, :cond_1c8

    const/4 v10, 0x6

    iput v10, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x402e000000000000L  # 15.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x3ffc000000000000L  # 1.75

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_1c4
    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto/16 :goto_608

    :cond_1c8
    const/16 v11, 0xb

    if-ne v4, v11, :cond_1de

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x402e000000000000L  # 15.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide v0, 0x3ffaac083126e979L  # 1.667

    goto :goto_163

    :cond_1de
    const/16 v11, 0xc

    if-ne v4, v11, :cond_1f4

    const/4 v11, 0x3

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x402e000000000000L  # 15.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v14, 0x402c000000000000L  # 14.0

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide v0, 0x3ffccccccccccccdL  # 1.8

    goto/16 :goto_163

    :cond_1f4
    const-wide/high16 v14, 0x402c000000000000L  # 14.0

    const/16 v11, 0xd

    if-ne v4, v11, :cond_220

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v14, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    const-wide/high16 v0, 0x4036000000000000L  # 22.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v0, -0x3fe8000000000000L  # -6.0

    :goto_21c
    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    goto/16 :goto_608

    :cond_220
    const/16 v11, 0xe

    if-ne v4, v11, :cond_24e

    const/4 v11, 0x3

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x4032000000000000L  # 18.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    const-wide/high16 v0, 0x4043000000000000L  # 38.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x4004000000000000L  # 2.5

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v0, -0x3fe4000000000000L  # -7.0

    goto :goto_21c

    :cond_24e
    const/16 v11, 0x3a

    const/16 v14, 0x51

    const/4 v15, -0x1

    const/16 v10, 0x20

    if-ne v4, v11, :cond_2b5

    const/4 v11, 0x6

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v2, 0x4046000000000000L  # 44.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v2, 0x4047000000000000L  # 46.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const/16 v0, 0xf

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide v4, 0x4051800000000000L  # 70.0

    add-double/2addr v2, v4

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput v15, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    const/4 v0, 0x0

    :goto_27b
    iget-object v2, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v2, Lcom/cmyksoft/retroworld/Game;->teleportsCount:I

    if-ge v0, v3, :cond_2a8

    iget-object v3, v2, Lcom/cmyksoft/retroworld/Game;->teleportKind:[C

    aget-char v3, v3, v0

    if-ne v3, v14, :cond_2a5

    iget v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    if-ne v3, v15, :cond_295

    iget-object v3, v2, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    aget-char v3, v3, v0

    mul-int/lit8 v3, v3, 0x20

    add-int/2addr v3, v7

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    goto :goto_29f

    :cond_295
    iget-object v3, v2, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    aget-char v3, v3, v0

    mul-int/lit8 v3, v3, 0x20

    add-int/lit8 v3, v3, 0x10

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    :goto_29f
    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->teleportY:[C

    aget-char v2, v2, v0

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    :cond_2a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_27b

    :cond_2a8
    :goto_2a8
    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    if-ge v1, v10, :cond_356

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->particleX:[D

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a8

    :cond_2b5
    const/16 v11, 0xf

    if-ne v4, v11, :cond_2df

    const/16 v0, 0x9

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x4031000000000000L  # 17.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide v0, 0x4041800000000000L  # 35.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x4012000000000000L  # 4.5

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_2da

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    goto/16 :goto_18e

    :cond_2da
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    neg-double v0, v0

    goto/16 :goto_18e

    :cond_2df
    const/16 v11, 0x3b

    if-ne v4, v11, :cond_32f

    const/4 v11, 0x6

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const/16 v3, 0x19

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    const-wide/high16 v2, 0x4040000000000000L  # 32.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide v2, 0x4057400000000000L  # 93.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput v15, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    :goto_2fd
    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v2, v0, Lcom/cmyksoft/retroworld/Game;->teleportsCount:I

    if-ge v1, v2, :cond_356

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Game;->teleportKind:[C

    aget-char v2, v2, v1

    if-ne v2, v14, :cond_32c

    iget v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    if-ne v2, v15, :cond_317

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    aget-char v2, v2, v1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v2, v7

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    goto :goto_322

    :cond_317
    iget-object v2, v0, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    aget-char v2, v2, v1

    mul-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v7

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    :goto_322
    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->teleportY:[C

    aget-char v0, v0, v1

    mul-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x78

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    :cond_32c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2fd

    :cond_32f
    const/16 v11, 0x3c

    if-ne v4, v11, :cond_35c

    const/4 v11, 0x6

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const/16 v1, 0xf

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const-wide/high16 v0, 0x4050000000000000L  # 64.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    new-instance v10, Lcom/cmyksoft/retroworld/AdditionalBoss;

    iget-object v1, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v7, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    move-object v0, v10

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/cmyksoft/retroworld/AdditionalBoss;-><init>(Lcom/cmyksoft/retroworld/Game;Lcom/cmyksoft/retroworld/Enemy;BBDD)V

    iput-object v10, v9, Lcom/cmyksoft/retroworld/Enemy;->additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    :cond_356
    iget v1, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v1, v0, Lcom/cmyksoft/retroworld/Game;->bossMaxLife:I

    goto/16 :goto_608

    :cond_35c
    const/16 v11, 0x10

    if-ne v4, v11, :cond_36b

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v1, 0x6

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    :goto_365
    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    goto/16 :goto_141

    :cond_36b
    const/16 v11, 0x3ec

    if-ne v4, v11, :cond_379

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const-wide/high16 v0, 0x4020000000000000L  # 8.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    goto/16 :goto_111

    :cond_379
    const/16 v11, 0x11

    if-ne v4, v11, :cond_383

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v11, 0x6

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    goto :goto_365

    :cond_383
    const/4 v11, 0x6

    const/16 v12, 0x3d

    if-ne v4, v12, :cond_3ad

    iput v11, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v3, 0x4012000000000000L  # 4.5

    iput-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const/16 v3, 0x1e

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    const-wide/high16 v4, 0x4042000000000000L  # 36.0

    iput-wide v4, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide v4, 0x4056800000000000L  # 90.0

    iput-wide v4, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/16 v1, 0x14

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iput v3, v0, Lcom/cmyksoft/retroworld/Game;->bossMaxLife:I

    goto/16 :goto_608

    :cond_3ad
    const/16 v12, 0x12

    if-eq v4, v12, :cond_5a2

    const/16 v12, 0x13

    if-eq v4, v12, :cond_5a2

    const/16 v12, 0x17

    if-eq v4, v12, :cond_5a2

    const/16 v12, 0x1e

    if-ne v4, v12, :cond_3bf

    goto/16 :goto_5a2

    :cond_3bf
    const/16 v12, 0x14

    if-ne v4, v12, :cond_3d5

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    const/16 v0, 0x9

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v12, 0x402c000000000000L  # 14.0

    iput-wide v12, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x4018000000000000L  # 6.0

    goto/16 :goto_163

    :cond_3d5
    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    const-wide/high16 v12, 0x402c000000000000L  # 14.0

    const/16 v11, 0x15

    if-ne v4, v11, :cond_3fa

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    iput v7, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-wide v12, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide v5, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    const-wide v0, 0x3fc999999999999aL  # 0.2

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v0, 0x4014000000000000L  # 5.0

    goto/16 :goto_163

    :cond_3fa
    const/16 v2, 0x16

    if-ne v4, v2, :cond_41b

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    const/16 v0, 0x9

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x402c000000000000L  # 14.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide v0, 0x40c3880000000000L  # 10000.0

    goto/16 :goto_141

    :cond_41b
    const/16 v2, 0x3eb

    if-ne v4, v2, :cond_423

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto/16 :goto_141

    :cond_423
    const/16 v2, 0x3e

    if-ne v4, v2, :cond_469

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->isMany:Z

    const/4 v2, 0x6

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v2, 0x403a000000000000L  # 26.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v2, 0x4048000000000000L  # 48.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    iput v8, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    const/4 v2, 0x0

    :goto_439
    iget-object v3, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v4, v3, Lcom/cmyksoft/retroworld/Game;->teleportsCount:I

    if-ge v2, v4, :cond_461

    iget-object v4, v3, Lcom/cmyksoft/retroworld/Game;->teleportKind:[C

    aget-char v4, v4, v2

    if-ne v4, v14, :cond_45e

    iget v4, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v3, v3, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    if-nez v4, :cond_453

    aget-char v3, v3, v2

    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x20

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto :goto_459

    :cond_453
    aget-char v3, v3, v2

    mul-int/lit8 v3, v3, 0x20

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    :goto_459
    iget-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v3, v3

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    :cond_45e
    add-int/lit8 v2, v2, 0x1

    goto :goto_439

    :cond_461
    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iget v0, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iput v0, v3, Lcom/cmyksoft/retroworld/Game;->bossMaxLife:I

    goto/16 :goto_608

    :cond_469
    const/16 v3, 0x18

    if-lt v4, v3, :cond_47e

    const/16 v3, 0x1d

    if-gt v4, v3, :cond_47e

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const/4 v0, 0x2

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    goto/16 :goto_68

    :cond_47e
    const/16 v3, 0x3f

    if-ne v4, v3, :cond_4d4

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    iget-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v5, 0x4020000000000000L  # 8.0

    add-double/2addr v3, v5

    iput-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const/4 v0, 0x6

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v2, 0x4037000000000000L  # 23.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v2, 0x4060000000000000L  # 128.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/16 v0, 0x23

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    const/4 v2, 0x2

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    iget-object v2, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iput v0, v2, Lcom/cmyksoft/retroworld/Game;->bossMaxLife:I

    const-wide/high16 v2, 0x4004000000000000L  # 2.5

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const/16 v0, 0xb

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput v15, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    const-wide/high16 v2, 0x403e000000000000L  # 30.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    :goto_4b1
    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v2, v0, Lcom/cmyksoft/retroworld/Game;->teleportsCount:I

    if-ge v1, v2, :cond_608

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Game;->teleportKind:[C

    aget-char v2, v2, v1

    if-ne v2, v14, :cond_4d1

    iget v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    if-ne v2, v15, :cond_4ca

    aget-char v0, v0, v1

    mul-int/lit8 v0, v0, 0x20

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    goto :goto_4d1

    :cond_4ca
    aget-char v0, v0, v1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v10

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    :cond_4d1
    :goto_4d1
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b1

    :cond_4d4
    const/16 v3, 0x7d1

    if-ne v4, v3, :cond_4e5

    const/4 v2, 0x6

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const-wide/high16 v0, 0x4014000000000000L  # 5.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x401c000000000000L  # 7.0

    goto/16 :goto_6a

    :cond_4e5
    const/16 v3, 0x7d3

    if-ne v4, v3, :cond_500

    const-wide/high16 v3, 0x4024000000000000L  # 10.0

    iput-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v3, 0x4034000000000000L  # 20.0

    iput-wide v3, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/4 v1, 0x6

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/16 v2, 0x0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const-wide/high16 v0, 0x405e000000000000L  # 120.0

    goto/16 :goto_141

    :cond_500
    const-wide/16 v2, 0x0

    const/16 v6, 0x7d2

    if-ne v4, v6, :cond_51b

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v0, 0x4

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4032000000000000L  # 18.0

    goto/16 :goto_6a

    :cond_51b
    const/16 v2, 0x40

    if-ne v4, v2, :cond_584

    const/4 v2, 0x6

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide v2, 0x4045800000000000L  # 43.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v2, 0x4056000000000000L  # 88.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const/16 v2, 0x19

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->life:I

    iget-object v3, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iput v2, v3, Lcom/cmyksoft/retroworld/Game;->bossMaxLife:I

    const-wide/high16 v2, 0x400c000000000000L  # 3.5

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    const v2, 0xffff

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    const-wide/16 v2, 0x0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v4, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v4, v9, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :goto_556
    iget-object v2, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v2, Lcom/cmyksoft/retroworld/Game;->teleportsCount:I

    if-ge v1, v3, :cond_578

    iget-object v3, v2, Lcom/cmyksoft/retroworld/Game;->teleportKind:[C

    aget-char v3, v3, v1

    if-ne v3, v14, :cond_575

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->teleportY:[C

    aget-char v2, v2, v1

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x20

    iget v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-le v3, v2, :cond_56f

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    :cond_56f
    iget v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    if-ge v3, v2, :cond_575

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    :cond_575
    add-int/lit8 v1, v1, 0x1

    goto :goto_556

    :cond_578
    iget v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v0, v0

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v4, 0x4030000000000000L  # 16.0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto/16 :goto_1c4

    :cond_584
    const/16 v1, 0x1f

    if-ne v4, v1, :cond_608

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v1, 0x6

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4020000000000000L  # 8.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v0, v0

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v0, v0

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    goto :goto_608

    :cond_5a2
    :goto_5a2
    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    const/4 v2, 0x6

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    const-wide/high16 v2, 0x4020000000000000L  # 8.0

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v2, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v2, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    mul-int/lit8 v3, v3, 0x20

    iput v3, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iput v1, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iget v2, v2, Lcom/cmyksoft/retroworld/Game;->fieldHeight:I

    mul-int/lit8 v2, v2, 0x20

    iput v2, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v6, 0x4040000000000000L  # 32.0

    div-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v6, v9, Lcom/cmyksoft/retroworld/Enemy;->y:D

    add-double/2addr v6, v4

    const-wide/high16 v3, 0x4040000000000000L  # 32.0

    div-double/2addr v6, v3

    double-to-int v3, v6

    sub-int/2addr v3, v0

    :goto_5d0
    iget-object v0, v9, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v4, v0, Lcom/cmyksoft/retroworld/Game;->teleportsCount:I

    if-ge v1, v4, :cond_608

    iget-object v4, v0, Lcom/cmyksoft/retroworld/Game;->teleportKind:[C

    aget-char v4, v4, v1

    if-ne v4, v14, :cond_605

    iget-object v4, v0, Lcom/cmyksoft/retroworld/Game;->teleportX:[C

    aget-char v4, v4, v1

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->teleportY:[C

    if-ne v4, v2, :cond_5f4

    aget-char v0, v0, v1

    if-ge v0, v3, :cond_5ed

    mul-int/lit8 v0, v0, 0x20

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    goto :goto_605

    :cond_5ed
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    iput v0, v9, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    goto :goto_605

    :cond_5f4
    aget-char v0, v0, v1

    if-ne v0, v3, :cond_605

    if-ge v4, v2, :cond_5ff

    mul-int/lit8 v4, v4, 0x20

    iput v4, v9, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto :goto_605

    :cond_5ff
    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x20

    iput v4, v9, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    :cond_605
    :goto_605
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d0

    :cond_608
    :goto_608
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width2Original:D

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->heightOriginal:D

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dxOriginal:D

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_621

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double/2addr v0, v2

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    :cond_621
    return-void
.end method

.method public next(D)V
    .registers 63

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v9, v1, Lcom/cmyksoft/retroworld/Game;->player:Lcom/cmyksoft/retroworld/Player;

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const-wide v32, 0x3feccccccccccccdL  # 0.9

    const-wide/16 v14, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x1

    if-gez v0, :cond_54

    iput-boolean v8, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-eqz v0, :cond_48

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v4, v4, v11

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v6, v4, v32

    mul-double v6, v6, v11

    add-double/2addr v2, v6

    mul-double v6, v11, v32

    add-double/2addr v4, v6

    iput-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v4, v4, v32

    mul-double v4, v4, v11

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget v0, v1, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    int-to-double v4, v0

    sub-double/2addr v2, v4

    iget v0, v1, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    int-to-double v0, v0

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    add-double/2addr v0, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_53

    goto :goto_51

    :cond_48
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double/2addr v0, v11

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    cmpg-double v2, v0, v14

    if-gtz v2, :cond_53

    :goto_51
    iput v13, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    :cond_53
    return-void

    :cond_54
    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v4, v2

    iget v5, v1, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int/2addr v4, v5

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v13, v6

    iget v14, v1, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int/2addr v13, v14

    move-object/from16 v34, v9

    iget-wide v8, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    move/from16 v19, v14

    const-wide/high16 v14, 0x4008000000000000L  # 3.0

    mul-double v21, v8, v14

    move-wide/from16 v23, v8

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    div-double v14, v21, v8

    double-to-int v14, v14

    move v15, v5

    move-wide/from16 v21, v6

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v25, 0x4008000000000000L  # 3.0

    mul-double v27, v5, v25

    move-wide/from16 v35, v5

    div-double v5, v27, v8

    double-to-int v5, v5

    neg-int v6, v14

    if-lt v4, v6, :cond_90

    iget v7, v1, Lcom/cmyksoft/retroworld/Game;->screenWidth:I

    add-int/2addr v7, v14

    if-gt v4, v7, :cond_90

    if-ltz v13, :cond_90

    iget v7, v1, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    add-int/2addr v7, v5

    if-gt v13, v7, :cond_90

    const/4 v7, 0x1

    goto :goto_91

    :cond_90
    const/4 v7, 0x0

    :goto_91
    iput-boolean v7, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    iget-boolean v7, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v9, v34

    iget-boolean v8, v9, Lcom/cmyksoft/retroworld/Player;->inTimer:Z

    move/from16 v29, v7

    move/from16 v30, v8

    const/16 v34, -0x1

    if-eqz v30, :cond_b6

    const/4 v7, 0x1

    if-ne v0, v7, :cond_ac

    iget v7, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b7

    goto :goto_ad

    :cond_ac
    const/4 v8, 0x2

    :goto_ad
    iget-boolean v7, v10, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    if-eqz v7, :cond_b2

    goto :goto_b7

    :cond_b2
    move/from16 v41, v29

    goto/16 :goto_1e78

    :cond_b6
    const/4 v8, 0x2

    :cond_b7
    :goto_b7
    const/4 v8, 0x3

    if-le v0, v8, :cond_1a5a

    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_c7

    move-object v4, v1

    move-wide v1, v2

    move/from16 v41, v29

    const/4 v3, 0x1

    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    goto/16 :goto_1a61

    :cond_c7
    const/16 v7, 0x3e9

    if-ne v0, v7, :cond_1bf

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    const-wide/high16 v2, -0x3fec000000000000L  # -5.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_de

    const-wide v2, 0x3f9999999999999aL  # 0.025

    :goto_d8
    mul-double v2, v2, v11

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    goto :goto_f6

    :cond_de
    const-wide/high16 v2, -0x3ff8000000000000L  # -3.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_ea

    const-wide v2, 0x3fa999999999999aL  # 0.05

    goto :goto_d8

    :cond_ea
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_f6

    const-wide v2, 0x3fb999999999999aL  # 0.1

    goto :goto_d8

    :cond_f6
    :goto_f6
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    const-wide/high16 v2, -0x4008000000000000L  # -1.5

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_116

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide v4, 0x3fc999999999999aL  # 0.2

    mul-double v4, v4, v11

    sub-double/2addr v2, v4

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_116

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    :cond_116
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double v4, v0, v2

    sub-double/2addr v0, v2

    mul-double v4, v4, v0

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double v6, v0, v2

    sub-double/2addr v0, v2

    mul-double v6, v6, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v13, v0

    const/16 v0, 0x1b8

    if-le v13, v0, :cond_135

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto :goto_14f

    :cond_135
    const/16 v0, 0x17c

    if-le v13, v0, :cond_140

    const v0, 0x3eaa7efa  # 0.333f

    const v14, 0x3eaa7efa  # 0.333f

    goto :goto_14f

    :cond_140
    const/16 v0, 0x140

    if-le v13, v0, :cond_14b

    const v0, 0x3f2ac083  # 0.667f

    const v14, 0x3f2ac083  # 0.667f

    goto :goto_14f

    :cond_14b
    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v14, 0x3f800000  # 1.0f

    :goto_14f
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    if-eqz v0, :cond_180

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v2, v2, v11

    iget-boolean v4, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v4, :cond_15f

    const/4 v4, 0x1

    goto :goto_160

    :cond_15f
    const/4 v4, -0x1

    :goto_160
    int-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkX(Lcom/cmyksoft/retroworld/Game;)Z

    move-result v0

    if-eqz v0, :cond_180

    const/16 v0, 0x1b8

    if-gt v13, v0, :cond_180

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndShellMirror:I

    const v2, 0x3f7d70a4  # 0.99f

    mul-float v2, v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/cmyksoft/retroworld/Sound;->play(IF)V

    :cond_180
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_18a

    const/4 v15, 0x1

    goto :goto_18b

    :cond_18a
    const/4 v15, 0x0

    :goto_18b
    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-boolean v4, v10, Lcom/cmyksoft/retroworld/Enemy;->makeJump:Z

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    const/4 v7, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v41, v29

    const/4 v11, 0x5

    const/4 v12, 0x1

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lcom/cmyksoft/retroworld/Enemy;->checkYAndJump(Lcom/cmyksoft/retroworld/Game;DZDZZ)V

    if-eqz v15, :cond_2e1

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2e1

    const/16 v0, 0x1b8

    if-gt v13, v0, :cond_2e1

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndShellMirror:I

    const v2, 0x3f7d70a4  # 0.99f

    mul-float v14, v14, v2

    invoke-virtual {v0, v1, v14}, Lcom/cmyksoft/retroworld/Sound;->play(IF)V

    goto/16 :goto_2e1

    :cond_1bf
    move/from16 v41, v29

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-ne v0, v11, :cond_27f

    iget-wide v4, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double v6, v2, v4

    sub-double v13, v2, v4

    mul-double v6, v6, v13

    iget-wide v13, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    sub-double v19, v21, v13

    sub-double v23, v21, v13

    mul-double v19, v19, v23

    add-double v6, v6, v19

    move-wide/from16 v19, v13

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    cmpg-double v0, v6, v12

    if-gtz v0, :cond_20c

    iput v11, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v0, v11

    sub-double v0, v4, v0

    cmpg-double v6, v2, v0

    if-gez v6, :cond_1ec

    const/4 v0, 0x1

    :goto_1e9
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_1f4

    :cond_1ec
    int-to-double v0, v11

    add-double/2addr v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1f4

    const/4 v0, 0x0

    goto :goto_1e9

    :cond_1f4
    :goto_1f4
    int-to-double v0, v11

    sub-double v13, v19, v0

    cmpg-double v0, v21, v13

    if-gez v0, :cond_201

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :goto_1fd
    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto/16 :goto_2e1

    :cond_201
    int-to-double v0, v11

    add-double v13, v19, v0

    cmpl-double v0, v21, v13

    if-lez v0, :cond_2e1

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    neg-double v0, v0

    goto :goto_1fd

    :cond_20c
    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    if-lez v0, :cond_217

    goto :goto_218

    :cond_217
    neg-double v2, v2

    :goto_218
    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-object v0, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_221
    if-ge v1, v0, :cond_2e1

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmyksoft/retroworld/Enemy;

    iget v3, v2, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-ne v3, v4, :cond_279

    if-eq v2, v10, :cond_279

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v5, v2, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x4034000000000000L  # 20.0

    cmpg-double v5, v3, v7

    if-gtz v5, :cond_27b

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, v2, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v5, v3, v7

    if-gtz v5, :cond_27b

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v5, v2, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v12, v3, v5

    const/4 v3, 0x1

    if-ltz v12, :cond_260

    iput-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_265

    :cond_260
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iput-boolean v3, v2, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    :goto_265
    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, v2, Lcom/cmyksoft/retroworld/Enemy;->y:D

    cmpl-double v13, v3, v5

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    if-ltz v13, :cond_273

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v3, v3

    goto :goto_276

    :cond_273
    neg-double v5, v3

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :goto_276
    iput-wide v3, v2, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_27c

    :cond_279
    const-wide/high16 v7, 0x4034000000000000L  # 20.0

    :cond_27b
    const/4 v12, 0x0

    :goto_27c
    add-int/lit8 v1, v1, 0x1

    goto :goto_221

    :cond_27f
    const-wide/high16 v7, 0x4034000000000000L  # 20.0

    const/16 v12, 0x9

    if-ne v0, v12, :cond_2e5

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    move-wide v4, v7

    move-wide/from16 v7, p1

    sub-double/2addr v2, v7

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v13, 0x0

    cmpg-double v0, v2, v13

    if-gtz v0, :cond_2e1

    iget-object v0, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v1, 0x1

    rsub-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v21, 0x3ea

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    invoke-direct/range {v19 .. v24}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v13, 0x4040000000000000L  # 32.0

    sub-double/2addr v1, v13

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v1, :cond_2cb

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v13, 0x402a000000000000L  # 13.0

    add-double/2addr v1, v13

    goto :goto_2d0

    :cond_2cb
    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v13, 0x402a000000000000L  # 13.0

    sub-double/2addr v1, v13

    :goto_2d0
    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v1, -0x3ff8000000000000L  # -3.0

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e1
    :goto_2e1
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    goto/16 :goto_1c17

    :cond_2e5
    move-wide/from16 v7, p1

    const/16 v12, 0xa

    if-ne v0, v12, :cond_361

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v4, 0x4028000000000000L  # 12.0

    if-nez v0, :cond_310

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v0, v0, v7

    add-double/2addr v2, v0

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double/2addr v2, v4

    move-wide/from16 v12, v21

    invoke-virtual {v10, v2, v3, v12, v13}, Lcom/cmyksoft/retroworld/Enemy;->checkWeb(DD)Z

    move-result v0

    if-nez v0, :cond_30e

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_30b

    const/4 v0, 0x1

    goto :goto_30c

    :cond_30b
    const/4 v0, 0x3

    :goto_30c
    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    :cond_30e
    const/4 v1, 0x2

    goto :goto_2e1

    :cond_310
    move-wide/from16 v12, v21

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32d

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v0, v0, v7

    add-double/2addr v0, v12

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    add-double/2addr v0, v4

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/cmyksoft/retroworld/Enemy;->checkWeb(DD)Z

    move-result v0

    if-nez v0, :cond_30e

    iput-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_32b

    const/4 v0, 0x2

    goto :goto_30c

    :cond_32b
    const/4 v0, 0x0

    goto :goto_30c

    :cond_32d
    const/4 v1, 0x2

    iget-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v14, v14, v7

    if-ne v0, v1, :cond_34a

    sub-double/2addr v2, v14

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v2, v4

    invoke-virtual {v10, v2, v3, v12, v13}, Lcom/cmyksoft/retroworld/Enemy;->checkWeb(DD)Z

    move-result v0

    if-nez v0, :cond_2e1

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->oldX:D

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_348

    const/4 v0, 0x3

    goto :goto_35e

    :cond_348
    const/4 v0, 0x1

    goto :goto_35e

    :cond_34a
    sub-double v14, v12, v14

    iput-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v14, v4

    invoke-virtual {v10, v2, v3, v14, v15}, Lcom/cmyksoft/retroworld/Enemy;->checkWeb(DD)Z

    move-result v0

    if-nez v0, :cond_2e1

    iput-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_35d

    const/4 v0, 0x0

    goto :goto_35e

    :cond_35d
    const/4 v0, 0x2

    :goto_35e
    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto :goto_2e1

    :cond_361
    const/4 v12, 0x2

    const/16 v11, 0xd

    if-ne v0, v11, :cond_3e1

    if-nez v30, :cond_383

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    add-double/2addr v0, v7

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_383

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-nez v0, :cond_383

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :cond_383
    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_3ad

    const/16 v2, -0xf

    const/16 v3, -0xc

    const/16 v4, 0x11

    const/4 v5, 0x0

    move/from16 v11, v41

    xor-int/lit8 v6, v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_3af

    const/16 v2, -0xe

    const/16 v3, -0x17

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v1, 0x1

    xor-int/lit8 v6, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    goto :goto_3af

    :cond_3ad
    move/from16 v11, v41

    :cond_3af
    :goto_3af
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_3dd

    const/16 v1, -0xf

    const/16 v2, -0xc

    const/16 v3, 0x11

    const/4 v4, 0x0

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v5, 0x1

    xor-int/lit8 v6, v0, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v5, v6

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_3dd

    const/16 v1, -0xe

    const/16 v2, -0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v5, 0x1

    xor-int/lit8 v6, v0, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v5, v6

    move v6, v13

    :goto_3da
    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    :cond_3dd
    :goto_3dd
    move/from16 v41, v11

    goto/16 :goto_2e1

    :cond_3e1
    move/from16 v11, v41

    const/16 v12, 0xe

    if-ne v0, v12, :cond_457

    if-nez v30, :cond_404

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    add-double/2addr v0, v7

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_404

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-nez v0, :cond_404

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :cond_404
    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_42b

    const/16 v2, -0x19

    const/16 v3, -0x2b

    const/4 v4, -0x7

    const/4 v5, 0x0

    xor-int/lit8 v6, v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_42b

    const/16 v2, -0x19

    const/16 v3, -0x19

    const/16 v4, 0x1a

    const/4 v5, 0x0

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v1, 0x1

    xor-int/lit8 v6, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_42b
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_3dd

    const/16 v1, -0x19

    const/16 v2, -0x2b

    const/4 v3, -0x7

    const/4 v4, 0x0

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v5, 0x1

    xor-int/lit8 v6, v0, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move v5, v6

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_3dd

    const/16 v1, -0x19

    const/16 v2, -0x19

    const/16 v3, 0x1a

    const/4 v4, 0x0

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v5, 0x1

    xor-int/lit8 v6, v0, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move v5, v6

    move v6, v12

    goto :goto_3da

    :cond_457
    const/16 v12, 0xf

    if-ne v0, v12, :cond_494

    if-lt v4, v6, :cond_46e

    iget v0, v1, Lcom/cmyksoft/retroworld/Game;->screenWidth:I

    add-int/2addr v0, v14

    if-gt v4, v0, :cond_46e

    if-ltz v13, :cond_46e

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int v0, v0, v19

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    if-gt v0, v1, :cond_46e

    const/4 v0, 0x1

    goto :goto_46f

    :cond_46e
    const/4 v0, 0x0

    :goto_46f
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Player;->width2:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3dd

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3dd

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3dd

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    neg-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto/16 :goto_3dd

    :cond_494
    const/16 v12, 0x10

    if-ne v0, v12, :cond_509

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double/2addr v2, v7

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3dd

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    rem-int/2addr v0, v2

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v0, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x401c000000000000L  # 7.0

    add-double/2addr v0, v4

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    if-ge v0, v1, :cond_504

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v21, 0x3ec

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v6, v12

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v12, v12

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v22, v6

    move/from16 v23, v12

    invoke-direct/range {v19 .. v24}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    const-wide/high16 v14, 0x4010000000000000L  # 4.0

    mul-double v12, v12, v14

    const-wide/high16 v19, -0x3fe8000000000000L  # -6.0

    sub-double v12, v19, v12

    iput-wide v12, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    mul-double v12, v12, v2

    const-wide/high16 v4, 0x4014000000000000L  # 5.0

    sub-double/2addr v12, v4

    iput-wide v12, v0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3dd

    :cond_504
    move-wide v7, v4

    move/from16 v41, v11

    goto/16 :goto_1c17

    :cond_509
    move v12, v4

    move/from16 v42, v5

    const/16 v4, 0x11

    if-ne v0, v4, :cond_57d

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double/2addr v2, v7

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3dd

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    rem-int/2addr v0, v2

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v0, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v4, 0x4024000000000000L  # 10.0

    mul-double v0, v0, v4

    const-wide/high16 v37, 0x401c000000000000L  # 7.0

    add-double v0, v0, v37

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    if-ge v0, v1, :cond_5db

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v21, 0x3ec

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v2, v2

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v3, v12

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v22, v2

    move/from16 v23, v3

    invoke-direct/range {v19 .. v24}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v12, 0x4010000000000000L  # 4.0

    mul-double v1, v1, v12

    const-wide/high16 v14, -0x3fdc000000000000L  # -10.0

    sub-double/2addr v14, v1

    iput-wide v14, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v39, 0x4014000000000000L  # 5.0

    mul-double v1, v1, v39

    const-wide/high16 v14, 0x4004000000000000L  # 2.5

    sub-double/2addr v1, v14

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5db

    :cond_57d
    const-wide/high16 v37, 0x401c000000000000L  # 7.0

    const-wide/high16 v39, 0x4014000000000000L  # 5.0

    const/16 v4, 0x3ec

    if-ne v0, v4, :cond_5e1

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v14, 0x0

    cmpl-double v0, v4, v14

    if-lez v0, :cond_5db

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->width4:D

    cmpl-double v0, v4, v14

    if-ltz v0, :cond_595

    const/4 v0, 0x1

    goto :goto_596

    :cond_595
    const/4 v0, 0x0

    :goto_596
    iget-boolean v4, v10, Lcom/cmyksoft/retroworld/Enemy;->inHill:Z

    move/from16 v25, v4

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->oldY:D

    move-wide/from16 v28, v4

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v26, v12

    const/4 v5, 0x0

    move-object v13, v1

    move-wide v14, v2

    move-wide/from16 v16, v21

    move-wide/from16 v18, v23

    move-wide/from16 v20, v26

    move-wide/from16 v22, v35

    move/from16 v24, v0

    move-wide/from16 v26, v2

    invoke-virtual/range {v13 .. v31}, Lcom/cmyksoft/retroworld/Game;->checkGround(DDDDDZZDDZZ)Z

    move-result v0

    if-eqz v0, :cond_5c2

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v0, v0, Lcom/cmyksoft/retroworld/Game;->returnY:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    invoke-virtual {v10, v5, v5}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    :cond_5c2
    iget-object v12, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v13, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    div-double v19, v2, v5

    move-wide v15, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v12 .. v20}, Lcom/cmyksoft/retroworld/Game;->checkWater(DDDD)Z

    move-result v0

    if-eqz v0, :cond_5db

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    :cond_5db
    :goto_5db
    move/from16 v41, v11

    move-wide/from16 v7, v37

    goto/16 :goto_1c17

    :cond_5e1
    move v4, v6

    const/16 v5, 0x16

    if-ne v0, v5, :cond_636

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double v4, v2, v0

    sub-double v12, v2, v0

    mul-double v4, v4, v12

    iget-wide v12, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    move-wide/from16 v14, v21

    sub-double v16, v14, v12

    sub-double v18, v14, v12

    mul-double v16, v16, v18

    add-double v4, v4, v16

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_630

    const/16 v4, 0x14

    iput v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v5, v4

    sub-double v5, v0, v5

    cmpg-double v7, v2, v5

    if-gez v7, :cond_60f

    const/4 v5, 0x1

    iput-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_619

    :cond_60f
    int-to-double v5, v4

    add-double/2addr v0, v5

    cmpl-double v5, v2, v0

    if-lez v5, :cond_619

    const/4 v5, 0x0

    iput-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_61a

    :cond_619
    :goto_619
    const/4 v5, 0x0

    :goto_61a
    int-to-double v0, v4

    sub-double v0, v12, v0

    cmpg-double v2, v14, v0

    if-gez v2, :cond_626

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :goto_623
    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_5db

    :cond_626
    int-to-double v0, v4

    add-double/2addr v12, v0

    cmpl-double v0, v14, v12

    if-lez v0, :cond_5db

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    neg-double v0, v0

    goto :goto_623

    :cond_630
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    iput-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_5db

    :cond_636
    move-wide/from16 v5, v21

    const/16 v7, 0x18

    if-lt v0, v7, :cond_853

    const/16 v7, 0x1d

    if-gt v0, v7, :cond_853

    iget-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    move/from16 v41, v11

    iget v11, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    move-wide/from16 v17, v2

    int-to-double v2, v11

    cmpg-double v11, v7, v2

    if-gez v11, :cond_653

    iget-boolean v2, v1, Lcom/cmyksoft/retroworld/Game;->electroSoundAlreadyStarted:Z

    if-nez v2, :cond_653

    const/4 v2, 0x1

    goto :goto_654

    :cond_653
    const/4 v2, 0x0

    :goto_654
    add-double v7, v7, p1

    iput-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    move/from16 v20, v12

    int-to-double v11, v3

    cmpl-double v21, v7, v11

    if-ltz v21, :cond_665

    int-to-double v11, v3

    sub-double/2addr v7, v11

    iput-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    :cond_665
    const/16 v3, 0x18

    if-eq v0, v3, :cond_757

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_757

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_67d

    move-object v11, v9

    move/from16 v0, v20

    move-wide/from16 v7, v37

    move/from16 v3, v42

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    const/4 v15, 0x0

    goto/16 :goto_761

    :cond_67d
    if-ltz v13, :cond_695

    iget v0, v1, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    move/from16 v3, v42

    add-int/2addr v0, v3

    if-gt v13, v0, :cond_695

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    sub-int/2addr v0, v15

    if-lt v0, v4, :cond_695

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int/2addr v0, v15

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->screenWidth:I

    add-int/2addr v1, v14

    if-gt v0, v1, :cond_695

    const/4 v13, 0x1

    goto :goto_696

    :cond_695
    const/4 v13, 0x0

    :goto_696
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_72f

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inStar:Z

    if-nez v0, :cond_72f

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    div-double v3, v35, v0

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    sub-double v7, v5, v3

    cmpl-double v11, v0, v7

    if-ltz v11, :cond_6e2

    iget-wide v7, v9, Lcom/cmyksoft/retroworld/Player;->height:D

    add-double v6, v5, v7

    add-double/2addr v6, v3

    cmpg-double v3, v0, v6

    if-gtz v3, :cond_6e2

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v4, v3

    iget-wide v6, v9, Lcom/cmyksoft/retroworld/Player;->width2:D

    add-double/2addr v4, v6

    add-double v4, v4, v23

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_6cb

    int-to-double v3, v3

    sub-double/2addr v3, v6

    sub-double v3, v3, v23

    cmpl-double v5, v0, v3

    if-gez v5, :cond_6dd

    :cond_6cb
    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v3

    add-double/2addr v4, v6

    add-double v4, v4, v23

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_6e2

    int-to-double v3, v3

    sub-double/2addr v3, v6

    sub-double v3, v3, v23

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_6e2

    :cond_6dd
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    invoke-virtual {v9, v0}, Lcom/cmyksoft/retroworld/Player;->damage(I)V

    :cond_6e2
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v3, v3

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_72f

    if-eqz v2, :cond_6fb

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndElectro:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cmyksoft/retroworld/Game;->electroSoundAlreadyStarted:Z

    :cond_6fb
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v4, 0x4026000000000000L  # 11.0

    sub-double v4, v2, v4

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_72f

    iget-wide v4, v9, Lcom/cmyksoft/retroworld/Player;->height:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4026000000000000L  # 11.0

    add-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_72f

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Player;->width2:D

    sub-double v4, v0, v2

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    sub-double/2addr v4, v6

    iget v8, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v11, v8

    cmpl-double v8, v4, v11

    if-ltz v8, :cond_72f

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v4

    add-double/2addr v4, v2

    add-double/2addr v4, v6

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_72f

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    invoke-virtual {v9, v0}, Lcom/cmyksoft/retroworld/Player;->damage(I)V

    :cond_72f
    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    div-double/2addr v3, v5

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v7, v0

    iget-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v14, v37

    const/4 v15, 0x0

    move-wide v5, v7

    move-wide v7, v11

    move-object v11, v9

    move v9, v13

    invoke-virtual/range {v0 .. v9}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionCenterCenterFromCustomPoint(DDDDZ)Z

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    div-double/2addr v3, v12

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v5, v0

    iget-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v9, 0x0

    goto/16 :goto_84d

    :cond_757
    move-object v11, v9

    move-wide/from16 v7, v37

    move/from16 v3, v42

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    const/4 v15, 0x0

    move/from16 v0, v20

    :goto_761
    if-lt v0, v4, :cond_779

    iget v4, v1, Lcom/cmyksoft/retroworld/Game;->screenWidth:I

    add-int/2addr v4, v14

    if-gt v0, v4, :cond_779

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    sub-int v0, v0, v19

    neg-int v3, v3

    if-lt v0, v3, :cond_779

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int v0, v0, v19

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    if-gt v0, v1, :cond_779

    const/4 v0, 0x1

    goto :goto_77a

    :cond_779
    const/4 v0, 0x0

    :goto_77a
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_833

    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inStar:Z

    if-nez v0, :cond_833

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->width2:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    add-double/2addr v3, v5

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_7c8

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    div-double v5, v3, v12

    sub-double v5, v0, v5

    iget v9, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v7, v9

    cmpl-double v14, v5, v7

    if-ltz v14, :cond_7af

    int-to-double v5, v9

    iget-wide v7, v11, Lcom/cmyksoft/retroworld/Player;->height:D

    add-double/2addr v5, v7

    div-double v7, v3, v12

    add-double/2addr v5, v7

    cmpg-double v7, v0, v5

    if-lez v7, :cond_7c3

    :cond_7af
    iget v5, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v6, v5

    div-double v8, v3, v12

    sub-double/2addr v6, v8

    cmpl-double v8, v0, v6

    if-ltz v8, :cond_7c8

    int-to-double v5, v5

    iget-wide v7, v11, Lcom/cmyksoft/retroworld/Player;->height:D

    add-double/2addr v5, v7

    div-double/2addr v3, v12

    add-double/2addr v5, v3

    cmpg-double v3, v0, v5

    if-gtz v3, :cond_7c8

    :cond_7c3
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    invoke-virtual {v11, v0}, Lcom/cmyksoft/retroworld/Player;->damage(I)V

    :cond_7c8
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v3, v3

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_833

    if-eqz v2, :cond_7e5

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    if-eqz v0, :cond_7e5

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndElectro:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cmyksoft/retroworld/Game;->electroSoundAlreadyStarted:Z

    :cond_7e5
    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->width2:D

    const-wide/high16 v4, 0x4026000000000000L  # 11.0

    add-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_818

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    div-double v4, v2, v12

    sub-double v4, v0, v4

    iget v6, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_818

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v4

    iget-wide v6, v11, Lcom/cmyksoft/retroworld/Player;->height:D

    add-double/2addr v4, v6

    div-double/2addr v2, v12

    add-double/2addr v4, v2

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_818

    :goto_812
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    invoke-virtual {v11, v0}, Lcom/cmyksoft/retroworld/Player;->damage(I)V

    goto :goto_833

    :cond_818
    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inWater:Z

    if-eqz v0, :cond_833

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->player:Lcom/cmyksoft/retroworld/Player;

    iget-boolean v0, v0, Lcom/cmyksoft/retroworld/Player;->inTeleport:Z

    if-nez v0, :cond_833

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_833

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_833

    goto :goto_812

    :cond_833
    :goto_833
    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    div-double/2addr v3, v12

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v7, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionCenterCenterFromCustomPoint(DDDDZ)Z

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    div-double/2addr v3, v12

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v7, v0

    :goto_84d
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionCenterCenterFromCustomPoint(DDDDZ)Z

    goto :goto_89e

    :cond_853
    move-wide/from16 v17, v2

    move/from16 v41, v11

    const-wide/high16 v12, 0x4000000000000000L  # 2.0

    const/4 v15, 0x0

    move-object v11, v9

    const/16 v2, 0x7d1

    if-ne v0, v2, :cond_8a1

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    move-wide/from16 v8, p1

    mul-double v2, v2, v8

    add-double v2, v17, v2

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v16, v12, v8

    add-double v6, v5, v16

    iput-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v12, v4

    if-lez v0, :cond_879

    const/4 v13, 0x0

    goto :goto_87a

    :cond_879
    const/4 v13, -0x4

    :goto_87a
    int-to-double v12, v13

    add-double/2addr v6, v12

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/cmyksoft/retroworld/Game;->blockIsSolid(DD)Z

    move-result v0

    if-eqz v0, :cond_88c

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    neg-int v0, v0

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    :cond_88c
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v2, v2

    cmpg-double v6, v0, v2

    if-lez v6, :cond_89c

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v2, v2

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_89e

    :cond_89c
    iput v15, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    :cond_89e
    :goto_89e
    move-object v9, v11

    goto/16 :goto_2e1

    :cond_8a1
    move-wide/from16 v8, p1

    const/16 v12, 0x38

    const-wide/16 v13, 0x0

    if-ne v0, v12, :cond_979

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    move-object v4, v1

    sub-double v0, v2, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    cmpg-double v7, v0, v13

    if-gtz v7, :cond_8b9

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :cond_8b9
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v7, 0x4010000000000000L  # 4.0

    cmpg-double v9, v0, v7

    if-gtz v9, :cond_92e

    cmpl-double v0, v2, v7

    if-lez v0, :cond_92e

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpl-double v2, v17, v0

    if-lez v2, :cond_8cd

    const/4 v0, 0x1

    goto :goto_8ce

    :cond_8cd
    const/4 v0, 0x0

    :goto_8ce
    xor-int v0, v0, v41

    if-eqz v0, :cond_92e

    new-instance v9, Lcom/cmyksoft/retroworld/Enemy;

    const/16 v2, 0x7d0

    move-wide/from16 v0, v17

    double-to-int v0, v0

    if-eqz v41, :cond_8de

    const/16 v1, 0x12

    goto :goto_8e0

    :cond_8de
    const/16 v1, -0x12

    :goto_8e0
    add-int v3, v0, v1

    double-to-int v0, v5

    add-int/lit8 v5, v0, -0x14

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    const-wide/high16 v0, -0x3ff0000000000000L  # -4.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fb5c28f5c28f5c3L  # 0.085

    mul-double v0, v0, v2

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_913

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto :goto_91d

    :cond_913
    const-wide/high16 v4, 0x402c000000000000L  # 14.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_91d

    const-wide/high16 v0, 0x402c000000000000L  # 14.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_91d
    :goto_91d
    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndFireHammer:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    goto :goto_930

    :cond_92e
    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    :goto_930
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    cmpl-double v4, v0, v13

    if-lez v4, :cond_93d

    move-wide v4, v7

    move-wide/from16 v8, p1

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    goto :goto_940

    :cond_93d
    move-wide v4, v7

    move-wide/from16 v8, p1

    :goto_940
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v6, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x4044000000000000L  # 40.0

    cmpg-double v16, v0, v6

    if-gtz v16, :cond_966

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    cmpg-double v6, v0, v13

    if-gtz v6, :cond_966

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v6, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    const-wide/high16 v16, 0x4030000000000000L  # 16.0

    add-double v6, v6, v16

    cmpl-double v16, v0, v6

    if-lez v16, :cond_966

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    :cond_966
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    cmpl-double v6, v0, v13

    if-lez v6, :cond_89e

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    cmpg-double v6, v0, v13

    if-gtz v6, :cond_89e

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dxOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto/16 :goto_89e

    :cond_979
    move-object v4, v1

    move-wide/from16 v21, v5

    move-wide/from16 v43, v17

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    const-wide/high16 v6, 0x4010000000000000L  # 4.0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_b8a

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-nez v0, :cond_990

    :cond_98a
    :goto_98a
    move-wide/from16 v17, v6

    const/4 v12, 0x4

    const/4 v15, 0x3

    goto/16 :goto_a8b

    :cond_990
    const/4 v1, 0x2

    if-gt v0, v1, :cond_9a2

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    cmpg-double v4, v0, v13

    if-gtz v4, :cond_98a

    const/4 v5, 0x3

    iput v5, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    goto :goto_98a

    :cond_9a2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_9c6

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    cmpg-double v16, v0, v13

    if-gtz v16, :cond_98a

    const/4 v1, 0x4

    iput v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iget-object v0, v4, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-double v5, v0

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :cond_9c0
    const/4 v12, 0x4

    const/4 v15, 0x3

    const-wide/high16 v17, 0x4010000000000000L  # 4.0

    goto/16 :goto_a8b

    :cond_9c6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a6b

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    sub-double/2addr v5, v8

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v0, :cond_9da

    const-wide/high16 v16, 0x4016000000000000L  # 5.5

    cmpl-double v0, v5, v16

    if-lez v0, :cond_9da

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :cond_9da
    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    cmpg-double v0, v5, v13

    if-gtz v0, :cond_9e7

    const/4 v0, 0x5

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    const-wide/high16 v5, 0x4010000000000000L  # 4.0

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :cond_9e7
    iget-wide v5, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    move-wide/from16 v1, v43

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_9c0

    const-wide/high16 v16, 0x4074000000000000L  # 320.0

    sub-double v2, v1, v16

    cmpl-double v0, v5, v2

    if-ltz v0, :cond_9c0

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    add-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v2, v2

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_9c0

    iput-wide v13, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v1, 0x1

    rsub-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    new-instance v6, Lcom/cmyksoft/retroworld/Enemy;

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v6

    const/4 v12, 0x4

    move-object v1, v4

    move v4, v5

    const/4 v15, 0x3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v0, :cond_a2c

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v2, 0x4030000000000000L  # 16.0

    add-double/2addr v0, v2

    iput-wide v0, v6, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v2, 0x4022000000000000L  # 9.0

    goto :goto_a35

    :cond_a2c
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v2, 0x4042000000000000L  # 36.0

    sub-double/2addr v0, v2

    iput-wide v0, v6, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    :goto_a35
    sub-double/2addr v0, v2

    iput-wide v0, v6, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    const-wide/high16 v17, 0x4010000000000000L  # 4.0

    sub-double v0, v0, v17

    iget-wide v2, v6, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v0, v2

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v4, v6, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v17

    iput-wide v2, v6, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v17

    iput-wide v0, v6, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndBur:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    goto :goto_a8b

    :cond_a6b
    const/4 v1, 0x5

    const/4 v12, 0x4

    const/4 v15, 0x3

    const-wide/high16 v17, 0x4010000000000000L  # 4.0

    if-ne v0, v1, :cond_a8b

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    cmpg-double v2, v0, v13

    if-gtz v2, :cond_a8b

    const/4 v0, 0x2

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iget-object v0, v4, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x46

    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    :cond_a8b
    :goto_a8b
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-eq v0, v15, :cond_b44

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a94

    goto/16 :goto_b44

    :cond_a94
    if-ge v0, v15, :cond_af2

    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_abb

    const/16 v2, -0x21

    const/16 v3, -0x39

    const/16 v4, 0x2c

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_ab9

    const/4 v2, -0x8

    const/16 v3, -0x5c

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    :cond_ab9
    move v7, v0

    goto :goto_abc

    :cond_abb
    const/4 v7, 0x0

    :goto_abc
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_ae0

    const/16 v1, -0x21

    const/16 v2, -0x39

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_ae1

    const/4 v1, -0x8

    const/16 v2, -0x5c

    const/16 v3, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    goto :goto_ae1

    :cond_ae0
    const/4 v0, 0x0

    :cond_ae1
    :goto_ae1
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-nez v1, :cond_89e

    if-nez v7, :cond_ae9

    if-eqz v0, :cond_89e

    :cond_ae9
    const/4 v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    const-wide/high16 v0, 0x403e000000000000L  # 30.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    goto/16 :goto_89e

    :cond_af2
    if-lt v0, v12, :cond_89e

    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_b17

    const/16 v2, -0x1c

    const/16 v3, -0x51

    const/16 v4, 0x2e

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_b17

    const/16 v2, 0x9

    const/16 v3, -0x5d

    const/16 v4, 0x2b

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_b17
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_89e

    const/16 v1, -0x1d

    const/16 v2, -0x3d

    const/4 v3, -0x5

    const/16 v4, -0x29

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_89e

    const/16 v1, -0x1a

    const/16 v2, -0x51

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_89e

    const/16 v1, 0x9

    const/16 v2, -0x5d

    const/16 v3, 0x2b

    goto :goto_b80

    :cond_b44
    :goto_b44
    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_b66

    const/16 v2, -0x1c

    const/16 v3, -0x46

    const/16 v4, 0x29

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_b66

    const/4 v2, 0x2

    const/16 v3, -0x5e

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_b66
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_89e

    const/16 v1, -0x1c

    const/16 v2, -0x46

    const/16 v3, 0x29

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_89e

    const/4 v1, 0x2

    const/16 v2, -0x5e

    :goto_b7e
    const/16 v3, 0x20

    :goto_b80
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b82
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    goto/16 :goto_89e

    :cond_b8a
    move-wide/from16 v1, v43

    const/4 v12, 0x4

    const/4 v15, 0x3

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_dd1

    iget-boolean v0, v4, Lcom/cmyksoft/retroworld/Game;->particlesEnabled:Z

    if-eqz v0, :cond_be6

    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/cmyksoft/retroworld/Game;->particlesEnabled:Z

    const/4 v0, 0x0

    :goto_b9a
    const/16 v1, 0x20

    if-ge v0, v1, :cond_be6

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v1, Lcom/cmyksoft/retroworld/Game;->particleX:[D

    aget-wide v3, v2, v0

    cmpl-double v5, v3, v13

    if-ltz v5, :cond_be3

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/cmyksoft/retroworld/Game;->particlesEnabled:Z

    iget-object v5, v1, Lcom/cmyksoft/retroworld/Game;->particleSx:[D

    aget-wide v6, v5, v0

    mul-double v6, v6, v8

    add-double/2addr v3, v6

    aput-wide v3, v2, v0

    iget-object v3, v1, Lcom/cmyksoft/retroworld/Game;->particleY:[D

    aget-wide v4, v3, v0

    iget-object v6, v1, Lcom/cmyksoft/retroworld/Game;->particleSy:[D

    aget-wide v17, v6, v0

    mul-double v17, v17, v8

    add-double v4, v4, v17

    aput-wide v4, v3, v0

    aget-wide v4, v6, v0

    add-double/2addr v4, v8

    aput-wide v4, v6, v0

    aget-wide v17, v3, v0

    mul-double v4, v4, v8

    add-double v17, v17, v4

    aput-wide v17, v3, v0

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->particleMaxY:[I

    aget v1, v1, v0

    add-int/2addr v1, v12

    int-to-double v3, v1

    cmpl-double v1, v17, v3

    if-lez v1, :cond_be3

    aget-wide v3, v6, v0

    cmpl-double v1, v3, v13

    if-lez v1, :cond_be3

    const-wide/high16 v3, -0x4010000000000000L  # -1.0

    aput-wide v3, v2, v0

    :cond_be3
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9a

    :cond_be6
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v0, :cond_c0a

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4051800000000000L  # 70.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_89e

    const/4 v1, 0x1

    iput v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v2, v0, Lcom/cmyksoft/retroworld/Sound;->sndSand:I

    invoke-virtual {v0, v2}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    goto/16 :goto_89e

    :cond_c0a
    const/4 v1, 0x1

    if-eq v0, v1, :cond_ce3

    if-ne v0, v12, :cond_c11

    goto/16 :goto_ce3

    :cond_c11
    if-ne v0, v15, :cond_cac

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_c1b

    const/4 v3, 0x3

    goto :goto_c1c

    :cond_c1b
    const/4 v3, -0x3

    :goto_c1c
    int-to-double v3, v3

    mul-double v3, v3, v8

    add-double/2addr v0, v3

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v3

    cmpg-double v6, v0, v4

    if-lez v6, :cond_c4a

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v4, v4

    cmpl-double v6, v0, v4

    if-gez v6, :cond_c4a

    iget-wide v4, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    const-wide v6, 0x4065400000000000L  # 170.0

    add-double/2addr v6, v4

    cmpl-double v17, v0, v6

    if-lez v17, :cond_c3e

    if-nez v2, :cond_c4a

    :cond_c3e
    const-wide v6, 0x4065400000000000L  # 170.0

    sub-double/2addr v4, v6

    cmpg-double v6, v0, v4

    if-gez v6, :cond_c67

    if-nez v2, :cond_c67

    :cond_c4a
    int-to-double v4, v3

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_c53

    int-to-double v0, v3

    :goto_c50
    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto :goto_c5c

    :cond_c53
    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_c5c

    int-to-double v0, v2

    goto :goto_c50

    :cond_c5c
    :goto_c5c
    iput v12, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndSand:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    :cond_c67
    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_c8a

    const/16 v2, -0x2d

    const/16 v3, -0x17

    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_c8a

    const/16 v2, -0x27

    const/16 v3, -0x24

    const/16 v4, 0x27

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_c8a
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_89e

    const/16 v1, -0xd

    const/16 v2, -0x33

    const/16 v3, 0xa

    const/16 v4, -0x20

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_89e

    const/16 v1, -0x27

    const/16 v2, -0x21

    const/16 v3, 0x27

    const/4 v4, 0x0

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto/16 :goto_b82

    :cond_cac
    const/4 v1, 0x5

    if-ne v0, v1, :cond_89e

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    cmpg-double v2, v0, v13

    if-gtz v2, :cond_89e

    iget-wide v0, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    add-int/lit8 v3, v2, 0x1

    int-to-double v3, v3

    cmpg-double v5, v0, v3

    const/4 v3, 0x1

    if-gez v5, :cond_ccb

    add-int/2addr v2, v3

    :goto_cc7
    int-to-double v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto :goto_cd6

    :cond_ccb
    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    add-int/lit8 v4, v2, -0x1

    int-to-double v4, v4

    cmpl-double v6, v0, v4

    if-lez v6, :cond_cd6

    sub-int/2addr v2, v3

    goto :goto_cc7

    :cond_cd6
    :goto_cd6
    iput v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndSand:I

    :goto_cde
    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    goto/16 :goto_89e

    :cond_ce3
    :goto_ce3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_d03

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_d18

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput v15, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_cff

    const/4 v0, 0x1

    goto :goto_d00

    :cond_cff
    const/4 v0, 0x0

    :goto_d00
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_d18

    :cond_d03
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    add-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_d18

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v0, 0x5

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v6, 0x4034000000000000L  # 20.0

    iput-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    goto :goto_d1a

    :cond_d18
    :goto_d18
    const-wide/high16 v6, 0x4034000000000000L  # 20.0

    :goto_d1a
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float5:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float5:D

    cmpg-double v2, v0, v13

    if-gtz v2, :cond_d9f

    const-wide/high16 v2, 0x3fd0000000000000L  # 0.25

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float5:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cmyksoft/retroworld/Game;->particlesEnabled:Z

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Game;->particleX:[D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v17

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    mul-double v17, v17, v6

    const-wide/high16 v19, 0x4000000000000000L  # 2.0

    mul-double v17, v17, v19

    add-double v3, v3, v17

    sub-double/2addr v3, v6

    aput-wide v3, v1, v2

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Game;->particleY:[D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    const-wide/high16 v12, 0x4010000000000000L  # 4.0

    mul-double v5, v5, v12

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Game;->particleSx:[D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4018000000000000L  # 6.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4008000000000000L  # 3.0

    sub-double/2addr v3, v5

    aput-wide v3, v1, v2

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Game;->particleSy:[D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    neg-double v3, v3

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    sub-double/2addr v5, v14

    mul-double v5, v5, v12

    iget-wide v12, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v14, v12, v14

    div-double/2addr v5, v14

    const-wide/high16 v14, 0x4000000000000000L  # 2.0

    add-double/2addr v5, v14

    mul-double v3, v3, v5

    aput-wide v3, v1, v2

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->particleMaxY:[I

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    double-to-int v2, v12

    aput v2, v0, v1

    const/4 v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x20

    iput v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    :cond_d9f
    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_dc5

    const/16 v2, -0x20

    const/16 v3, -0x33

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    const-wide/high16 v12, 0x4034000000000000L  # 20.0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_dc7

    const/16 v2, -0x2c

    const/16 v3, -0x1e

    const/16 v4, 0x2c

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    goto :goto_dc7

    :cond_dc5
    const-wide/high16 v12, 0x4034000000000000L  # 20.0

    :cond_dc7
    :goto_dc7
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_89e

    const/16 v1, -0x20

    const/16 v2, -0x34

    goto/16 :goto_b7e

    :cond_dd1
    const-wide/high16 v12, 0x4034000000000000L  # 20.0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_f28

    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_dfb

    const/16 v2, -0x16

    const/16 v3, -0x5e

    const/16 v4, 0x16

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_dfb

    const/16 v2, -0x22

    const/16 v3, -0x4c

    const/16 v4, 0x22

    const/16 v5, -0xb

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_dfb
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_e15

    const/16 v1, -0xe

    const/16 v2, -0x49

    const/16 v3, 0xe

    const/16 v4, -0x1e

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-eqz v0, :cond_e15

    const/4 v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto :goto_e16

    :cond_e15
    const/4 v0, 0x1

    :goto_e16
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ne v1, v0, :cond_e40

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v2, 0x402e000000000000L  # 15.0

    mul-double v2, v2, v8

    sub-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v3, v2

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_e40

    int-to-double v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v0, 0x5

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v14, 0x4014000000000000L  # 5.0

    mul-double v1, v1, v14

    add-double/2addr v1, v14

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    goto :goto_e43

    :cond_e40
    const/4 v0, 0x5

    const-wide/high16 v14, 0x4014000000000000L  # 5.0

    :goto_e43
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ne v1, v0, :cond_e62

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_e62

    const/4 v0, 0x3

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_e5f

    const/4 v0, 0x1

    goto :goto_e60

    :cond_e5f
    const/4 v0, 0x0

    :goto_e60
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    :cond_e62
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e9c

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_e82

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v2, 0x4018000000000000L  # 6.0

    mul-double v2, v2, v8

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_e98

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_e9c

    goto :goto_e98

    :cond_e82
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const-wide/high16 v2, 0x4018000000000000L  # 6.0

    mul-double v2, v2, v8

    sub-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_e98

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_e9c

    :cond_e98
    :goto_e98
    const/4 v0, 0x4

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto :goto_e9d

    :cond_e9c
    const/4 v0, 0x4

    :goto_e9d
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ne v1, v0, :cond_f11

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    mul-double v2, v8, v6

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    add-double v17, v4, v6

    cmpl-double v19, v2, v17

    if-lez v19, :cond_ec3

    iget v14, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v14, v14

    cmpl-double v17, v2, v14

    if-lez v17, :cond_ec3

    const-wide/high16 v14, 0x4008000000000000L  # 3.0

    mul-double v4, v8, v14

    sub-double/2addr v2, v4

    :goto_ec0
    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto :goto_ed5

    :cond_ec3
    sub-double/2addr v4, v6

    cmpg-double v14, v2, v4

    if-gez v14, :cond_ed5

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v4, v4

    cmpg-double v14, v2, v4

    if-gez v14, :cond_ed5

    const-wide/high16 v4, 0x4008000000000000L  # 3.0

    mul-double v4, v4, v8

    add-double/2addr v2, v4

    goto :goto_ec0

    :cond_ed5
    :goto_ed5
    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    move-object/from16 v43, v2

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    move-wide/from16 v44, v2

    move-wide/from16 v54, v2

    const-wide/high16 v2, 0x4030000000000000L  # 16.0

    add-double v46, v0, v2

    const-wide/high16 v48, 0x4030000000000000L  # 16.0

    const-wide/high16 v50, 0x4040000000000000L  # 32.0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-wide/from16 v56, v0

    invoke-virtual/range {v43 .. v59}, Lcom/cmyksoft/retroworld/Game;->checkGround(DDDDZZDDZZ)Z

    move-result v0

    if-eqz v0, :cond_f13

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/Game;->returnY:D

    const-wide/high16 v3, 0x4030000000000000L  # 16.0

    sub-double/2addr v1, v3

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v14, 0x6

    iput v14, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double v0, v0, v6

    const-wide/high16 v2, 0x402e000000000000L  # 15.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    goto :goto_f14

    :cond_f11
    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    :cond_f13
    const/4 v14, 0x6

    :goto_f14
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ne v0, v14, :cond_89e

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_89e

    const/4 v3, 0x1

    iput v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto/16 :goto_89e

    :cond_f28
    const/4 v3, 0x1

    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    const/4 v14, 0x6

    const/16 v5, 0x3c

    if-ne v0, v5, :cond_f43

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

    invoke-virtual {v0, v8, v9}, Lcom/cmyksoft/retroworld/AdditionalBoss;->next(D)V

    iput-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->additionalBoss:Lcom/cmyksoft/retroworld/AdditionalBoss;

    iget-wide v1, v0, Lcom/cmyksoft/retroworld/AdditionalBoss;->x:D

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v0, v0, Lcom/cmyksoft/retroworld/AdditionalBoss;->y:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    goto/16 :goto_89e

    :cond_f43
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_1080

    iget-boolean v0, v11, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_f86

    const/16 v2, -0x1e

    const/16 v3, -0x23

    const/16 v4, 0x27

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v14, v6

    move/from16 v6, v41

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_f84

    const/16 v2, -0xa

    const/16 v3, -0x5c

    const/16 v4, 0x15

    const/16 v5, -0x44

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_f87

    const/16 v2, 0xa

    const/16 v3, -0x48

    const/16 v4, 0x25

    const/16 v5, -0x24

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    move v7, v0

    goto :goto_f88

    :cond_f84
    const/4 v7, 0x1

    goto :goto_f88

    :cond_f86
    move-wide v14, v6

    :cond_f87
    const/4 v7, 0x0

    :goto_f88
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_fda

    const/16 v1, -0x1b

    const/16 v2, -0x22

    const/16 v3, -0xe

    const/16 v4, -0x14

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_fd6

    const/16 v1, -0x1a

    const/16 v2, -0x21

    const/16 v3, 0x27

    const/4 v4, 0x0

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_fd8

    const/16 v1, -0xa

    const/16 v2, -0x5c

    const/16 v3, 0x15

    const/16 v4, -0x44

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_fda

    const/16 v1, 0xa

    const/16 v2, -0x48

    const/16 v3, 0x25

    const/16 v4, -0x24

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    goto :goto_fdb

    :cond_fd6
    iput-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    :cond_fd8
    const/4 v0, 0x1

    goto :goto_fdb

    :cond_fda
    move v0, v7

    :goto_fdb
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v1, :cond_ffa

    if-nez v0, :cond_ff0

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4060000000000000L  # 128.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_ffa

    :cond_ff0
    const/4 v0, 0x3

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    :cond_ffa
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1005

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    :cond_1005
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_89e

    iget-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1017

    const/4 v3, 0x1

    goto :goto_1018

    :cond_1017
    const/4 v3, 0x0

    :goto_1018
    if-ne v2, v3, :cond_89e

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_89e

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x41a00000  # 20.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x42480000  # 50.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v3, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v5, 0x4054000000000000L  # 80.0

    sub-double/2addr v3, v5

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v14, v11, Lcom/cmyksoft/retroworld/Player;->dx:D

    const-wide/high16 v17, 0x4044000000000000L  # 40.0

    mul-double v14, v14, v17

    add-double/2addr v5, v14

    iget-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v14, v12

    sub-double/2addr v14, v3

    sub-double/2addr v5, v1

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4022000000000000L  # 9.0

    mul-double v3, v3, v5

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v5

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndBur:I

    goto/16 :goto_cde

    :cond_1080
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_11c0

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    if-nez v0, :cond_10a2

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double v2, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L  # 180.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_109d

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v0, :cond_89e

    :cond_109d
    const/4 v3, 0x6

    :goto_109e
    iput v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    goto/16 :goto_89e

    :cond_10a2
    const/4 v3, 0x6

    if-ne v0, v3, :cond_10e2

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpl-double v0, v3, v1

    if-lez v0, :cond_10ad

    const/4 v0, 0x1

    goto :goto_10ae

    :cond_10ad
    const/4 v0, 0x0

    :goto_10ae
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f947ae147ae147bL  # 0.02

    mul-double v0, v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide v2, 0x3fc999999999999aL  # 0.2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_10cf

    const-wide v0, 0x3fc999999999999aL  # 0.2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto :goto_10d7

    :cond_10cf
    const-wide/high16 v2, 0x4010000000000000L  # 4.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_10d7

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_10d7
    :goto_10d7
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-nez v0, :cond_10e0

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    neg-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_10e0
    const/4 v3, 0x4

    goto :goto_109e

    :cond_10e2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_114f

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v5, v3, v8

    add-double v0, v1, v5

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v5, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    sub-double v5, v5, v21

    iget-wide v14, v11, Lcom/cmyksoft/retroworld/Player;->height:D

    sub-double/2addr v5, v14

    const-wide/high16 v14, 0x402e000000000000L  # 15.0

    add-double/2addr v5, v14

    const-wide v14, 0x3fb999999999999aL  # 0.1

    mul-double v5, v5, v14

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v14, 0x4024000000000000L  # 10.0

    cmpl-double v2, v5, v14

    if-lez v2, :cond_1109

    iput-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_1121

    :cond_1109
    const-wide/high16 v14, 0x3fe8000000000000L  # 0.75

    cmpg-double v2, v5, v14

    if-gez v2, :cond_1121

    const/4 v2, 0x3

    iput v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    const-wide/16 v5, 0x0

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    cmpl-double v2, v3, v5

    if-lez v2, :cond_111d

    const-wide/high16 v2, 0x4020000000000000L  # 8.0

    goto :goto_111f

    :cond_111d
    const-wide/high16 v2, -0x3fe0000000000000L  # -8.0

    :goto_111f
    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_1121
    :goto_1121
    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v2, v2, v8

    add-double v6, v21, v2

    iput-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v3, v2

    cmpg-double v5, v0, v3

    if-lez v5, :cond_113b

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v3, v3

    cmpl-double v5, v0, v3

    if-gez v5, :cond_113b

    iget-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v3, :cond_89e

    :cond_113b
    int-to-double v3, v2

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_1144

    :goto_1140
    int-to-double v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto :goto_114c

    :cond_1144
    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_114c

    goto :goto_1140

    :cond_114c
    :goto_114c
    const/4 v0, 0x1

    goto/16 :goto_11bc

    :cond_114f
    const/4 v3, 0x3

    if-ne v0, v3, :cond_119b

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v3, v3, v8

    add-double v2, v1, v3

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v4, v0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1187

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v1

    cmpl-double v1, v2, v4

    if-gez v1, :cond_1187

    iget-wide v4, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double v6, v2, v4

    const-wide v14, 0x4070400000000000L  # 260.0

    cmpl-double v1, v6, v14

    if-lez v1, :cond_1177

    if-nez v41, :cond_1187

    :cond_1177
    sub-double/2addr v4, v2

    const-wide v6, 0x4070400000000000L  # 260.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1183

    if-eqz v41, :cond_1187

    :cond_1183
    iget-boolean v1, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v1, :cond_89e

    :cond_1187
    int-to-double v4, v0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1190

    :goto_118c
    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    goto :goto_1198

    :cond_1190
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1198

    goto :goto_118c

    :cond_1198
    :goto_1198
    const/4 v3, 0x1

    goto/16 :goto_109e

    :cond_119b
    const/4 v3, 0x1

    if-ne v0, v3, :cond_89e

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    cmpl-double v0, v3, v1

    if-lez v0, :cond_11a6

    const/4 v0, 0x1

    goto :goto_11a7

    :cond_11a6
    const/4 v0, 0x0

    :goto_11a7
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    mul-double v2, v8, v0

    sub-double v6, v21, v2

    iput-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v1, v0

    cmpg-double v3, v6, v1

    if-gtz v3, :cond_89e

    int-to-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const/4 v0, 0x6

    :goto_11bc
    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    goto/16 :goto_89e

    :cond_11c0
    const/16 v3, 0x3f

    if-ne v0, v3, :cond_149e

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    if-nez v0, :cond_11e3

    sub-double v2, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x406f400000000000L  # 250.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_11dd

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v0, :cond_11e0

    :cond_11dd
    const/4 v0, 0x3

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param5:I

    :cond_11e0
    move-object v9, v11

    goto/16 :goto_1476

    :cond_11e3
    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x407f400000000000L  # 500.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_11f6

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    sub-double/2addr v0, v8

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    :cond_11f6
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    double-to-int v2, v0

    if-ltz v4, :cond_1254

    const-wide v3, 0x3fd999999999999aL  # 0.4

    mul-double v3, v3, v8

    add-double/2addr v0, v3

    rem-double/2addr v0, v12

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x13

    const/4 v3, 0x5

    div-int/2addr v1, v3

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-nez v1, :cond_1222

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v1, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    if-eqz v1, :cond_121c

    goto :goto_121d

    :cond_121c
    neg-double v5, v5

    :goto_121d
    mul-double v5, v5, v8

    add-double/2addr v3, v5

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    :cond_1222
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1274

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1230

    const/4 v1, 0x1

    goto :goto_1231

    :cond_1230
    const/4 v1, 0x0

    :goto_1231
    iget-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    xor-int/2addr v1, v3

    if-nez v1, :cond_124c

    if-nez v3, :cond_1241

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    add-int/lit8 v1, v1, 0x40

    int-to-double v14, v1

    cmpg-double v1, v5, v14

    if-ltz v1, :cond_124c

    :cond_1241
    if-eqz v3, :cond_1274

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    add-int/lit8 v1, v1, -0x40

    int-to-double v3, v1

    cmpl-double v1, v5, v3

    if-lez v1, :cond_1274

    :cond_124c
    const-wide v3, -0x407b851eb851eb85L  # -0.01

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    goto :goto_1274

    :cond_1254
    neg-int v2, v2

    const-wide v3, 0x3fd999999999999aL  # 0.4

    mul-double v3, v3, v8

    sub-double/2addr v0, v3

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/high16 v3, -0x3ff0000000000000L  # -4.0

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_1272

    const-wide/high16 v0, 0x4031000000000000L  # 17.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/16 v0, 0x11

    goto :goto_1274

    :cond_1272
    double-to-int v0, v0

    neg-int v0, v0

    :cond_1274
    :goto_1274
    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v3, v5

    iget-boolean v1, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v1, :cond_1280

    const/16 v1, 0xa

    goto :goto_1282

    :cond_1280
    const/16 v1, -0xa

    :goto_1282
    int-to-double v5, v1

    add-double/2addr v3, v5

    iget-wide v5, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v14, v11, Lcom/cmyksoft/retroworld/Player;->height2:D

    sub-double/2addr v5, v14

    iget-wide v14, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v5, v14

    const-wide/high16 v14, 0x4051000000000000L  # 68.0

    add-double/2addr v5, v14

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L  # 180.0

    mul-double v3, v3, v5

    double-to-int v1, v3

    const/16 v3, 0x63

    if-le v1, v3, :cond_12a7

    const/4 v1, 0x0

    goto :goto_12db

    :cond_12a7
    const/16 v3, 0x51

    if-le v1, v3, :cond_12ad

    const/4 v1, 0x1

    goto :goto_12db

    :cond_12ad
    const/16 v3, 0x44

    if-le v1, v3, :cond_12b3

    const/4 v1, 0x2

    goto :goto_12db

    :cond_12b3
    const/16 v3, 0x3a

    if-le v1, v3, :cond_12b9

    const/4 v1, 0x3

    goto :goto_12db

    :cond_12b9
    if-lez v1, :cond_12bd

    const/4 v1, 0x4

    goto :goto_12db

    :cond_12bd
    const/16 v3, -0x3a

    if-le v1, v3, :cond_12c4

    const/16 v1, 0x8

    goto :goto_12db

    :cond_12c4
    const/16 v3, -0x44

    if-le v1, v3, :cond_12cb

    const/16 v1, 0x9

    goto :goto_12db

    :cond_12cb
    const/16 v3, -0x51

    if-le v1, v3, :cond_12d2

    const/16 v1, 0xa

    goto :goto_12db

    :cond_12d2
    const/16 v3, -0x63

    if-le v1, v3, :cond_12d9

    const/16 v1, 0xb

    goto :goto_12db

    :cond_12d9
    const/16 v1, 0xc

    :goto_12db
    if-eq v0, v2, :cond_12ea

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_12e6

    sub-int/2addr v0, v2

    :goto_12e3
    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto :goto_12ea

    :cond_12e6
    if-ge v0, v1, :cond_12ea

    add-int/2addr v0, v2

    goto :goto_12e3

    :cond_12ea
    :goto_12ea
    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1463

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/16 v14, 0x8

    if-ge v0, v14, :cond_12fb

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1463

    :cond_12fb
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1463

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x402e000000000000L  # 15.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x403e000000000000L  # 30.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_131b

    const/4 v0, 0x1

    goto :goto_131c

    :cond_131b
    const/4 v0, 0x0

    :goto_131c
    iget-wide v1, v11, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v1, v3

    iget-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_1328

    const/16 v3, 0xa

    goto :goto_132a

    :cond_1328
    const/16 v3, -0xa

    :goto_132a
    int-to-double v3, v3

    add-double/2addr v1, v3

    iget-wide v3, v11, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v5, v11, Lcom/cmyksoft/retroworld/Player;->height2:D

    sub-double/2addr v3, v5

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4051000000000000L  # 68.0

    add-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L  # 180.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x5c

    if-lt v1, v2, :cond_1358

    const/16 v2, 0x60

    if-ge v1, v2, :cond_1358

    const/4 v1, -0x5

    const/4 v2, -0x5

    goto :goto_1374

    :cond_1358
    const/16 v2, 0x60

    if-lt v1, v2, :cond_1365

    const/16 v2, 0x63

    if-ge v1, v2, :cond_1365

    const/16 v1, -0xa

    const/16 v2, -0xa

    goto :goto_1374

    :cond_1365
    const/16 v2, 0x51

    if-lt v1, v2, :cond_1372

    const/16 v2, 0x57

    if-gt v1, v2, :cond_1372

    const/16 v1, 0xa

    const/16 v2, 0xa

    goto :goto_1374

    :cond_1372
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1374
    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_13c7

    if-ne v3, v14, :cond_137c

    goto :goto_13c7

    :cond_137c
    const/4 v4, 0x3

    if-eq v3, v4, :cond_13b9

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1384

    goto :goto_13b9

    :cond_1384
    const/4 v4, 0x2

    if-eq v3, v4, :cond_13ab

    const/16 v4, 0xa

    if-ne v3, v4, :cond_138c

    goto :goto_13ab

    :cond_138c
    if-eqz v3, :cond_139d

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1393

    goto :goto_139d

    :cond_1393
    const/16 v7, 0x43

    const/16 v3, 0x16

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x0

    goto :goto_13d5

    :cond_139d
    :goto_139d
    const/16 v7, 0x4d

    const/16 v3, 0x17

    const/16 v2, -0x1e

    const/16 v1, -0x1e

    const/16 v4, 0x9

    const/16 v5, 0x9

    const/4 v6, -0x1

    goto :goto_13d5

    :cond_13ab
    :goto_13ab
    const/16 v3, 0x17

    const/16 v2, 0x1e

    const/16 v1, 0x1e

    const/16 v4, 0x9

    const/16 v5, 0x9

    const/4 v6, 0x1

    const/16 v7, 0x38

    goto :goto_13d5

    :cond_13b9
    :goto_13b9
    const/16 v7, 0x34

    const/16 v3, 0x14

    const/16 v2, 0x28

    const/16 v1, 0x28

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x2

    goto :goto_13d5

    :cond_13c7
    :goto_13c7
    const/16 v7, 0x2c

    const/16 v3, 0xd

    const/4 v1, 0x7

    const/16 v2, 0x46

    const/16 v4, 0x3c

    const/16 v1, 0x3c

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, 0x3

    :goto_13d5
    const/4 v14, 0x3

    const/4 v15, -0x1

    :goto_13d7
    if-ge v15, v14, :cond_1463

    new-instance v14, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v12, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v19, 0x7d1

    iget-wide v8, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v8, v8

    move v9, v5

    move v13, v6

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v5, v5

    const/16 v22, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v12

    move/from16 v20, v8

    move/from16 v21, v5

    invoke-direct/range {v17 .. v22}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iput-boolean v0, v14, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iget v5, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iput v5, v14, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iget v5, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput v5, v14, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iget-wide v5, v14, Lcom/cmyksoft/retroworld/Enemy;->y:D

    move v8, v13

    int-to-double v12, v7

    const-wide v17, 0x3fb999999999999aL  # 0.1

    move/from16 v19, v7

    move/from16 v20, v8

    int-to-double v7, v15

    mul-double v7, v7, v17

    move-object/from16 v17, v11

    int-to-double v10, v1

    mul-double v7, v7, v10

    sub-double/2addr v12, v7

    sub-double/2addr v5, v12

    iput-wide v5, v14, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, v14, Lcom/cmyksoft/retroworld/Enemy;->x:D

    mul-int v7, v15, v4

    add-int/2addr v7, v3

    if-eqz v0, :cond_1420

    const/4 v8, 0x1

    goto :goto_1421

    :cond_1420
    const/4 v8, -0x1

    :goto_1421
    mul-int v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    iput-wide v5, v14, Lcom/cmyksoft/retroworld/Enemy;->x:D

    if-eqz v0, :cond_142b

    int-to-double v5, v9

    goto :goto_142d

    :cond_142b
    neg-int v5, v9

    int-to-double v5, v5

    :goto_142d
    iput-wide v5, v14, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide v5, 0x3fb999999999999aL  # 0.1

    int-to-double v7, v2

    mul-double v7, v7, v5

    iput-wide v7, v14, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    move/from16 v8, v20

    if-eqz v0, :cond_143f

    neg-int v5, v8

    goto :goto_1440

    :cond_143f
    move v5, v8

    :goto_1440
    iput v5, v14, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    move-object/from16 v10, p0

    iget-object v5, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v5, v5, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v5, v5, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v6, v5, Lcom/cmyksoft/retroworld/Sound;->sndLaser:I

    invoke-virtual {v5, v6}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    add-int/lit8 v15, v15, 0x1

    move v6, v8

    move v5, v9

    move-object/from16 v11, v17

    move/from16 v7, v19

    const-wide/high16 v12, 0x4034000000000000L  # 20.0

    const/4 v14, 0x3

    move-wide/from16 v8, p1

    goto/16 :goto_13d7

    :cond_1463
    move-object v9, v11

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_1476

    const/16 v2, -0x19

    const/16 v3, -0x7f

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_1476
    :goto_1476
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_2e1

    const/16 v1, -0x18

    const/16 v2, -0x78

    const/16 v3, 0x18

    const/16 v4, -0x5e

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    if-nez v0, :cond_2e1

    const/16 v1, -0x19

    const/16 v2, -0x56

    const/16 v3, 0x19

    const/4 v4, 0x0

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    goto/16 :goto_2e1

    :cond_149e
    move-object v9, v11

    const/16 v3, 0x12

    if-eq v0, v3, :cond_19e1

    const/16 v3, 0x13

    if-ne v0, v3, :cond_14ac

    const/4 v1, 0x1

    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    goto/16 :goto_19e4

    :cond_14ac
    const/16 v3, 0x17

    if-eq v0, v3, :cond_19b2

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_14b6

    goto/16 :goto_19b2

    :cond_14b6
    const/16 v3, 0x7d3

    if-ne v0, v3, :cond_1545

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    mul-double v3, v3, p1

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v7, v5, p1

    add-double v0, v1, v7

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v11, v7, p1

    add-double v11, v21, v11

    iput-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v13, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    const/16 v2, 0x18

    move-wide/from16 v17, v7

    int-to-double v7, v2

    sub-double v19, v13, v7

    cmpl-double v2, v19, v0

    if-lez v2, :cond_14e7

    add-double/2addr v5, v3

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    cmpl-double v2, v5, v13

    if-lez v2, :cond_14f9

    iput-wide v13, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    goto :goto_14f9

    :cond_14e7
    add-double/2addr v13, v7

    cmpg-double v2, v13, v0

    if-gez v2, :cond_14f9

    sub-double/2addr v5, v3

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v13, -0x4000000000000000L  # -2.0

    cmpg-double v2, v5, v13

    if-gez v2, :cond_14f9

    const-wide/high16 v5, -0x4000000000000000L  # -2.0

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_14f9
    :goto_14f9
    iget-wide v5, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v13, v9, Lcom/cmyksoft/retroworld/Player;->height2:D

    sub-double v19, v5, v13

    sub-double v19, v19, v7

    cmpl-double v2, v19, v11

    if-lez v2, :cond_1512

    add-double v7, v17, v3

    iput-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    cmpl-double v4, v7, v2

    if-lez v4, :cond_1525

    :goto_150f
    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_1525

    :cond_1512
    sub-double/2addr v5, v13

    add-double/2addr v5, v7

    cmpg-double v2, v5, v11

    if-gez v2, :cond_1525

    sub-double v7, v17, v3

    iput-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v2, -0x4000000000000000L  # -2.0

    cmpg-double v4, v7, v2

    if-gez v4, :cond_1525

    const-wide/high16 v2, -0x4000000000000000L  # -2.0

    goto :goto_150f

    :cond_1525
    :goto_1525
    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v0, v0, p1

    add-double/2addr v11, v0

    iput-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2e1

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    goto/16 :goto_2e1

    :cond_1545
    const/16 v3, 0x7d2

    if-ne v0, v3, :cond_158e

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v0, :cond_1568

    invoke-virtual {v10, v4}, Lcom/cmyksoft/retroworld/Enemy;->checkGround(Lcom/cmyksoft/retroworld/Game;)Z

    move-result v0

    if-eqz v0, :cond_1568

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const/4 v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v1, 0x4024000000000000L  # 10.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const/4 v1, 0x6

    iput v1, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v1, 0x4028000000000000L  # 12.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    goto :goto_1569

    :cond_1568
    const/4 v0, 0x1

    :goto_1569
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ne v1, v0, :cond_2e1

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2e1

    const/4 v0, 0x2

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v0, 0x4

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v2, 0x4010000000000000L  # 4.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v0, 0x4032000000000000L  # 18.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    goto/16 :goto_2e1

    :cond_158e
    const/16 v3, 0x40

    if-ne v0, v3, :cond_1982

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1706

    const/4 v3, 0x2

    if-ne v0, v3, :cond_159c

    goto/16 :goto_1706

    :cond_159c
    const/4 v3, 0x3

    if-eq v0, v3, :cond_15e1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15a3

    goto :goto_15e1

    :cond_15a3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15dd

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v1, v1, p1

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-gtz v7, :cond_15dd

    if-ne v0, v3, :cond_15b6

    const/4 v8, 0x2

    goto :goto_15b7

    :cond_15b6
    const/4 v8, 0x1

    :goto_15b7
    iput v8, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iget-object v0, v4, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_15d2

    const/4 v13, 0x1

    goto :goto_15d3

    :cond_15d2
    const/4 v13, 0x0

    :goto_15d3
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const-wide/high16 v0, -0x3ff8000000000000L  # -3.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v0, 0x4014000000000000L  # 5.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_15dd
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    goto/16 :goto_1781

    :cond_15e1
    :goto_15e1
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v4, 0x4010000000000000L  # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1643

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1604

    const/4 v8, 0x2

    goto :goto_1605

    :cond_1604
    const/4 v8, 0x1

    :goto_1605
    iput v8, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4044000000000000L  # 40.0

    mul-double v0, v0, v2

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1620

    const/4 v13, 0x1

    goto :goto_1621

    :cond_1620
    const/4 v13, 0x0

    :goto_1621
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v0, v0

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget v5, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    sub-double/2addr v0, v2

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    div-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/high16 v0, 0x400c000000000000L  # 3.5

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_1643
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_164d

    const/4 v13, 0x1

    goto :goto_164e

    :cond_164d
    const/4 v13, 0x0

    :goto_164e
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_15dd

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16be

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    mul-double v0, v0, v7

    const-wide/high16 v2, 0x402c000000000000L  # 14.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v19, 0x7d4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v22}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_168e

    const/16 v3, 0x22

    goto :goto_1690

    :cond_168e
    const/16 v3, -0x22

    :goto_1690
    int-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide v5, 0x4053400000000000L  # 77.0

    sub-double/2addr v3, v5

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    const-wide/high16 v11, 0x4010000000000000L  # 4.0

    sub-double/2addr v5, v11

    sub-double/2addr v5, v3

    iget-wide v3, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v3, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4018000000000000L  # 6.0

    mul-double v3, v3, v5

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v5

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_16fd

    :cond_16be
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x403e000000000000L  # 30.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v19, 0x7d3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v22}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_16ed

    const/16 v3, 0x22

    goto :goto_16ef

    :cond_16ed
    const/16 v3, -0x22

    :goto_16ef
    int-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide v3, 0x4052c00000000000L  # 75.0

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    :goto_16fd
    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1781

    :cond_1706
    :goto_1706
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v5, v5, p1

    if-eqz v41, :cond_1710

    const/4 v0, 0x1

    goto :goto_1711

    :cond_1710
    const/4 v0, -0x1

    :goto_1711
    int-to-double v11, v0

    mul-double v5, v5, v11

    add-double v2, v1, v5

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    invoke-virtual {v10, v4}, Lcom/cmyksoft/retroworld/Enemy;->checkX(Lcom/cmyksoft/retroworld/Game;)Z

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v3, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_172f

    :goto_172b
    int-to-double v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    goto :goto_1737

    :cond_172f
    iget v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1737

    goto :goto_172b

    :cond_1737
    :goto_1737
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v2, v2, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v4, 0x4010000000000000L  # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1781

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_175c

    const/4 v0, 0x3

    goto :goto_175d

    :cond_175c
    const/4 v0, 0x4

    :goto_175d
    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L  # 50.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_177a

    const/4 v13, 0x1

    goto :goto_177b

    :cond_177a
    const/4 v13, 0x0

    :goto_177b
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const-wide/high16 v0, 0x4014000000000000L  # 5.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    :cond_1781
    :goto_1781
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_186f

    const/16 v1, -0xc

    const/16 v2, -0x6d

    const/16 v3, 0x8

    const/16 v4, -0x55

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v11

    const/16 v1, -0x14

    const/16 v2, -0x61

    const/16 v3, 0xd

    const/16 v4, -0x5a

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v11, v0

    if-eqz v11, :cond_17ff

    const/4 v0, 0x5

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-gez v0, :cond_17ff

    const/4 v0, 0x0

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/4 v13, 0x0

    :goto_17b6
    const/16 v0, 0x10

    if-ge v13, v0, :cond_17ff

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v3, 0x7d2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v3, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v3, v3, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4036000000000000L  # 22.0

    sub-double/2addr v1, v3

    iget-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v3, :cond_17df

    const/16 v3, -0x10

    goto :goto_17e1

    :cond_17df
    const/16 v3, 0x10

    :goto_17e1
    int-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-object v3, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v3, v3, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v4, 0x38

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_17b6

    :cond_17ff
    const/16 v1, -0x2a

    const/16 v2, -0x5a

    const/16 v3, -0x1a

    const/16 v4, -0x49

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v11, v0

    const/16 v1, -0xf

    const/16 v2, -0x54

    const/16 v3, 0x1f

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v11, v0

    const/16 v1, -0x1f

    const/16 v2, -0x48

    const/16 v3, 0x26

    const/16 v4, -0x3b

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v11, v0

    const/16 v1, -0x1b

    const/16 v2, -0x3a

    const/16 v3, 0x2a

    const/16 v4, -0x2d

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v11, v0

    const/16 v1, -0x17

    const/16 v2, -0x2c

    const/16 v4, -0x1f

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v11, v0

    const/16 v1, -0x14

    const/16 v2, -0x1e

    const/16 v3, 0x24

    const/16 v4, -0x12

    iget-boolean v5, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkFireCollizionZone(IIIIZZ)Z

    move-result v0

    or-int/2addr v0, v11

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    if-nez v1, :cond_186f

    if-eqz v0, :cond_186f

    const/4 v0, 0x5

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    :cond_186f
    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_1919

    const/16 v2, -0xc

    const/16 v3, -0x6d

    const/16 v4, 0x8

    const/16 v5, -0x55

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0x14

    const/16 v3, -0x61

    const/16 v4, 0xd

    const/16 v5, -0x5a

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0x2a

    const/16 v3, -0x5a

    const/16 v4, -0x1a

    const/16 v5, -0x49

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0xf

    const/16 v3, -0x54

    const/16 v4, 0x1f

    const/16 v5, -0x49

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0x1f

    const/16 v3, -0x48

    const/16 v4, 0x26

    const/16 v5, -0x3b

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0x1b

    const/16 v3, -0x3a

    const/16 v4, 0x2a

    const/16 v5, -0x2d

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0x17

    const/16 v3, -0x2c

    const/16 v4, 0x2a

    const/16 v5, -0x1f

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/16 v2, -0x14

    const/16 v3, -0x1e

    const/16 v4, 0x24

    const/16 v5, -0x12

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_1919

    const/4 v2, -0x1

    const/16 v3, -0x11

    const/16 v4, 0x1e

    const/4 v5, -0x6

    iget-boolean v6, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/cmyksoft/retroworld/Enemy;->checkPlayerCollizionZone(Lcom/cmyksoft/retroworld/Player;IIIIZ)Z

    :cond_1919
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    const-wide/high16 v2, -0x4000000000000000L  # -2.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1c17

    new-instance v0, Lcom/cmyksoft/retroworld/Enemy;

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/16 v19, 0x7d2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v22}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v4, v3

    add-double/2addr v1, v4

    iget-boolean v4, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v4, :cond_1945

    const/16 v4, -0x10

    goto :goto_1947

    :cond_1945
    const/16 v4, 0x10

    :goto_1947
    int-to-double v4, v4

    add-double/2addr v1, v4

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/high16 v4, 0x4018000000000000L  # 6.0

    sub-double/2addr v1, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    int-to-double v3, v3

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->random:Ljava/util/Random;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x11

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    goto/16 :goto_1c17

    :cond_1982
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1c17

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v0, v0

    iget-wide v2, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v4, 0x4014000000000000L  # 5.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4038000000000000L  # 24.0

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v0, v0

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v2, v2, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v4, 0x4004000000000000L  # 2.5

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4028000000000000L  # 12.0

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    goto/16 :goto_1c17

    :cond_19b2
    :goto_19b2
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    iget-wide v1, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1c17

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1c17

    iget-wide v1, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1c17

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1c17

    const/16 v1, 0x17

    if-ne v0, v1, :cond_19db

    const/16 v0, 0x20

    goto :goto_19dd

    :cond_19db
    const/16 v0, -0x20

    :goto_19dd
    iput v0, v9, Lcom/cmyksoft/retroworld/Player;->scrollDownYMax:I

    goto/16 :goto_1c17

    :cond_19e1
    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    const/4 v1, 0x1

    :goto_19e4
    iput-boolean v1, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    iget-wide v1, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v5, v3

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_1a0f

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v5, v3

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_1a0f

    iget-wide v1, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v5, v3

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_1a0f

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v5, v3

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_1a0f

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1a0c

    const/4 v0, -0x1

    goto :goto_1a0d

    :cond_1a0c
    const/4 v0, 0x2

    :goto_1a0d
    iput-byte v0, v9, Lcom/cmyksoft/retroworld/Player;->windDirection:B

    :cond_1a0f
    iget-object v0, v4, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_1a16
    if-ge v13, v0, :cond_1c17

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmyksoft/retroworld/Enemy;

    iget v2, v1, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1a57

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1a57

    iget-wide v2, v1, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    int-to-double v4, v4

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_1a57

    iget v4, v10, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    int-to-double v4, v4

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1a57

    iget-wide v1, v1, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1a57

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1a57

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1a54

    const/4 v1, -0x1

    goto :goto_1a55

    :cond_1a54
    const/4 v1, 0x2

    :goto_1a55
    iput-byte v1, v10, Lcom/cmyksoft/retroworld/Enemy;->windDirection:B

    :cond_1a57
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a16

    :cond_1a5a
    move-object v4, v1

    move-wide v1, v2

    move/from16 v41, v29

    const-wide/high16 v7, 0x401c000000000000L  # 7.0

    const/4 v3, 0x1

    :goto_1a61
    if-ne v0, v3, :cond_1b21

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ne v0, v3, :cond_1a88

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1c17

    iput-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    const/4 v0, 0x0

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->width2Original:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->heightOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dxOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iput-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    goto/16 :goto_1c17

    :cond_1a88
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c17

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v2, 0x4010000000000000L  # 4.0

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_1aec

    iget-object v0, v4, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_1aa0
    if-ge v13, v0, :cond_1aec

    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v1, v1, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmyksoft/retroworld/Enemy;

    iget v2, v1, Lcom/cmyksoft/retroworld/Enemy;->id:I

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->id:I

    if-eq v2, v3, :cond_1ae9

    iget v2, v1, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-lez v2, :cond_1ae9

    iget-boolean v2, v1, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v2, :cond_1ae9

    iget-wide v2, v1, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, v1, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    iget-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    add-double/2addr v4, v11

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1ae9

    iget-wide v2, v1, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    sub-double v11, v4, v11

    cmpl-double v6, v2, v11

    if-ltz v6, :cond_1ae9

    iget-wide v11, v1, Lcom/cmyksoft/retroworld/Enemy;->height:D

    sub-double/2addr v2, v11

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1ae9

    iget-boolean v2, v1, Lcom/cmyksoft/retroworld/Enemy;->invulnerable:Z

    if-nez v2, :cond_1ae9

    iget-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v3}, Lcom/cmyksoft/retroworld/Enemy;->damage(ZZI)V

    :cond_1ae9
    add-int/lit8 v13, v13, 0x1

    goto :goto_1aa0

    :cond_1aec
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1c17

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide v2, 0x3fd999999999999aL  # 0.4

    mul-double v2, v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1c17

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dxOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v0, 0x4044000000000000L  # 40.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    const/4 v1, 0x1

    iput v1, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v1, 0x4026000000000000L  # 11.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v1, 0x4035000000000000L  # 21.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    const/4 v3, 0x3

    iput v3, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    goto/16 :goto_1c17

    :cond_1b21
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1bd3

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-nez v0, :cond_1b76

    iget-wide v3, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L  # 180.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1b6a

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x405e000000000000L  # 120.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1b6a

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1b51

    const/4 v13, 0x1

    goto :goto_1b52

    :cond_1b51
    const/4 v13, 0x0

    :goto_1b52
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-ne v13, v0, :cond_1b6a

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/high16 v2, 0x4024000000000000L  # 10.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1c17

    const/4 v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    goto/16 :goto_1c17

    :cond_1b6a
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1c17

    add-double v0, v0, p1

    goto/16 :goto_1c07

    :cond_1b76
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c17

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    sub-double v5, v5, p1

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    const-wide/16 v11, 0x0

    cmpg-double v0, v5, v11

    if-gtz v0, :cond_1c17

    const/16 v0, 0x3e8

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const-wide/high16 v5, 0x4010000000000000L  # 4.0

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v5, 0x402e000000000000L  # 15.0

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    const/4 v0, 0x0

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    iput-boolean v3, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    new-instance v6, Lcom/cmyksoft/retroworld/Enemy;

    const/16 v3, 0x3e9

    double-to-int v5, v1

    move-wide/from16 v0, v21

    double-to-int v0, v0

    const/16 v1, 0xa

    add-int/lit8 v11, v0, -0xa

    const/4 v12, 0x0

    move-object v0, v6

    move-object v1, v4

    move v2, v3

    move v3, v5

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/cmyksoft/retroworld/Enemy;-><init>(Lcom/cmyksoft/retroworld/Game;IIIZ)V

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndShellCatch:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    iput-boolean v0, v6, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const-wide/high16 v0, -0x3fdf000000000000L  # -8.5

    iput-wide v0, v6, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    iput-wide v7, v6, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_1c17

    :cond_1bd3
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1c17

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1c0a

    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    const/4 v2, 0x2

    iput v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v2, 0x4036000000000000L  # 22.0

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1c17

    const/4 v0, 0x3

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dxOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->heightOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const/4 v0, 0x0

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    :goto_1c07
    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    goto :goto_1c17

    :cond_1c0a
    const-wide/high16 v2, 0x4044000000000000L  # 40.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1c17

    const/4 v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_1c17
    :goto_1c17
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-nez v0, :cond_1c1f

    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    return-void

    :cond_1c1f
    if-ltz v0, :cond_1e78

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inTimer:Z

    if-nez v0, :cond_1e78

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c96

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v4, p1, v2

    add-double/2addr v0, v4

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v11, p1, v6

    add-double/2addr v4, v11

    iput-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/16 v11, 0x0

    cmpl-double v8, v2, v11

    if-lez v8, :cond_1c44

    const/4 v13, 0x1

    goto :goto_1c45

    :cond_1c44
    const/4 v13, 0x0

    :goto_1c45
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    cmpg-double v8, v2, v11

    if-gtz v8, :cond_1c5a

    iget-object v8, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v8, v8, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    int-to-double v11, v8

    iget-wide v13, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    sub-double/2addr v11, v13

    cmpg-double v8, v0, v11

    if-ltz v8, :cond_1c58

    goto :goto_1c5a

    :cond_1c58
    :goto_1c58
    const/4 v0, 0x0

    goto :goto_1c92

    :cond_1c5a
    :goto_1c5a
    const-wide/16 v11, 0x0

    cmpl-double v8, v2, v11

    if-ltz v8, :cond_1c6f

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v2, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    iget v2, v2, Lcom/cmyksoft/retroworld/Game;->screenWidth:I

    add-int/2addr v3, v2

    int-to-double v2, v3

    iget-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    sub-double/2addr v2, v11

    cmpl-double v8, v0, v2

    if-gtz v8, :cond_1c58

    :cond_1c6f
    const-wide/16 v0, 0x0

    cmpg-double v2, v6, v0

    if-gtz v2, :cond_1c7e

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v2, v2, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    int-to-double v2, v2

    cmpg-double v8, v4, v2

    if-ltz v8, :cond_1c58

    :cond_1c7e
    cmpl-double v2, v6, v0

    if-ltz v2, :cond_1e78

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v1, v0, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    iget v0, v0, Lcom/cmyksoft/retroworld/Game;->screenHeight:I

    add-int/2addr v1, v0

    int-to-double v0, v1

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    add-double/2addr v0, v2

    cmpl-double v2, v4, v0

    if-lez v2, :cond_1e78

    goto :goto_1c58

    :goto_1c92
    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    goto/16 :goto_1e78

    :cond_1c96
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1ccd

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v2, v2, p1

    iget-boolean v4, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v4, :cond_1ca5

    const/4 v4, 0x1

    goto :goto_1ca6

    :cond_1ca5
    const/4 v4, -0x1

    :goto_1ca6
    int-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v4, v2, v32

    mul-double v4, v4, p1

    add-double/2addr v0, v4

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    mul-double v4, p1, v32

    add-double/2addr v2, v4

    iput-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    cmpl-double v4, v2, v7

    if-lez v4, :cond_1cc2

    iput-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    :cond_1cc2
    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v2, v2, v32

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    goto/16 :goto_1e78

    :cond_1ccd
    if-eqz v0, :cond_1e78

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1e78

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    mul-double v0, v0, p1

    const-wide/high16 v2, 0x4014000000000000L  # 5.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1ce7

    div-double v2, v0, v2

    double-to-int v2, v2

    const/4 v3, 0x1

    add-int/lit8 v8, v2, 0x1

    int-to-double v2, v8

    div-double/2addr v0, v2

    move-wide v11, v0

    move v13, v8

    goto :goto_1ce9

    :cond_1ce7
    move-wide v11, v0

    const/4 v13, 0x1

    :goto_1ce9
    const/4 v14, 0x0

    :goto_1cea
    if-ge v14, v13, :cond_1e78

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_1cf2

    const/4 v8, 0x1

    goto :goto_1cf3

    :cond_1cf2
    const/4 v8, 0x0

    :goto_1cf3
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d29

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    if-eqz v0, :cond_1d19

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_1d04

    const/4 v2, 0x1

    goto :goto_1d05

    :cond_1d04
    const/4 v2, -0x1

    :goto_1d05
    int-to-double v2, v2

    mul-double v2, v2, v11

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkX(Lcom/cmyksoft/retroworld/Game;)Z

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inJump:Z

    if-nez v0, :cond_1d19

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkRavine(Lcom/cmyksoft/retroworld/Game;)V

    :cond_1d19
    :goto_1d19
    iget-object v1, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-boolean v4, v10, Lcom/cmyksoft/retroworld/Enemy;->makeJump:Z

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->jumpStartSpeed:D

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmyksoft/retroworld/Enemy;->checkYAndJump(Lcom/cmyksoft/retroworld/Game;DZDZZ)V

    goto/16 :goto_1e74

    :cond_1d29
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d45

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    if-eqz v0, :cond_1d19

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_1d38

    const/4 v2, 0x1

    goto :goto_1d39

    :cond_1d38
    const/4 v2, -0x1

    :goto_1d39
    int-to-double v2, v2

    mul-double v2, v2, v11

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkX(Lcom/cmyksoft/retroworld/Game;)Z

    goto :goto_1d19

    :cond_1d45
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1dd2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1d53

    const/4 v0, 0x0

    const/16 v2, 0x8

    const/16 v4, 0xa

    goto/16 :goto_1dd7

    :cond_1d53
    const/16 v2, 0x8

    if-eq v0, v2, :cond_1d5b

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1e74

    :cond_1d5b
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->checkLadder:Z

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_1d66

    const/4 v0, 0x1

    goto :goto_1d67

    :cond_1d66
    const/4 v0, -0x1

    :goto_1d67
    int-to-double v5, v0

    mul-double v5, v5, v11

    add-double/2addr v3, v5

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkX(Lcom/cmyksoft/retroworld/Game;)Z

    if-eqz v8, :cond_1d7d

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float4:D

    mul-double v5, v5, p1

    add-double/2addr v3, v5

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    :cond_1d7d
    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    mul-double v3, v3, v5

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    add-double/2addr v5, v3

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_1dac

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkGround(Lcom/cmyksoft/retroworld/Game;)Z

    move-result v0

    if-eqz v0, :cond_1e74

    iget-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    sub-double/2addr v3, v5

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide v3, 0x3ff921fb54442d18L  # 1.5707963267948966

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    goto/16 :goto_1e74

    :cond_1dac
    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    const/4 v3, 0x1

    invoke-virtual {v10, v0, v3}, Lcom/cmyksoft/retroworld/Enemy;->checkRoof(Lcom/cmyksoft/retroworld/Game;Z)Z

    move-result v0

    iget v3, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1dc0

    iget-object v3, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v3}, Lcom/cmyksoft/retroworld/Enemy;->checkWaterRoof(Lcom/cmyksoft/retroworld/Game;)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_1dc0
    if-eqz v0, :cond_1e74

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    add-double/2addr v5, v7

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const-wide v5, -0x4006de04abbbd2e8L  # -1.5707963267948966

    iput-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    goto/16 :goto_1e74

    :cond_1dd2
    const/16 v2, 0x8

    const/16 v4, 0xa

    const/4 v0, 0x0

    :goto_1dd7
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->checkLadder:Z

    iget-wide v5, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    const-wide/high16 v17, 0x4000000000000000L  # 2.0

    div-double v19, v1, v17

    sub-double v5, v5, v19

    const-wide/high16 v19, 0x3ff0000000000000L  # 1.0

    sub-double v5, v5, v19

    move-wide/from16 v19, v5

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    div-double v1, v1, v17

    add-double/2addr v4, v1

    div-double v4, v4, v17

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/16 v2, 0x0

    cmpl-double v6, v0, v2

    if-eqz v6, :cond_1e1c

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v0, :cond_1e0b

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double/2addr v1, v4

    move-wide/from16 v6, v19

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/cmyksoft/retroworld/Game;->checkHalfSolid(DD)Z

    move-result v0

    if-eqz v0, :cond_1e1e

    const/4 v0, 0x0

    goto :goto_1e19

    :cond_1e0b
    move-wide/from16 v6, v19

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v1, v4

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/cmyksoft/retroworld/Game;->checkHalfSolid(DD)Z

    move-result v0

    if-eqz v0, :cond_1e1e

    const/4 v0, 0x1

    :goto_1e19
    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    goto :goto_1e1e

    :cond_1e1c
    move-wide/from16 v6, v19

    :cond_1e1e
    :goto_1e1e
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    const-wide/16 v2, 0x0

    cmpl-double v15, v0, v2

    if-lez v15, :cond_1e38

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double v5, v6, v4

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/cmyksoft/retroworld/Game;->checkHalfSolid(DD)Z

    move-result v0

    if-eqz v0, :cond_1e5d

    :cond_1e32
    :goto_1e32
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    neg-double v0, v0

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    goto :goto_1e5d

    :cond_1e38
    const-wide/16 v2, 0x0

    cmpg-double v15, v0, v2

    if-gez v15, :cond_1e5d

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double v5, v6, v4

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/cmyksoft/retroworld/Game;->checkHalfSolid(DD)Z

    move-result v0

    if-nez v0, :cond_1e32

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1e53

    goto :goto_1e32

    :cond_1e53
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1e5d

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    invoke-virtual {v10, v0}, Lcom/cmyksoft/retroworld/Enemy;->checkWaterRoof(Lcom/cmyksoft/retroworld/Game;)Z

    :cond_1e5d
    :goto_1e5d
    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    iget-boolean v2, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v2, :cond_1e65

    move-wide v2, v11

    goto :goto_1e66

    :cond_1e65
    neg-double v2, v11

    :goto_1e66
    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    if-eqz v8, :cond_1e74

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->dy:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    :cond_1e74
    :goto_1e74
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1cea

    :cond_1e78
    :goto_1e78
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v1, 0x38

    if-ge v0, v1, :cond_1e92

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-object v2, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v2, v2, Lcom/cmyksoft/retroworld/Game;->fieldHeight:I

    mul-int/lit8 v2, v2, 0x20

    int-to-double v2, v2

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    add-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1e92

    const/4 v0, 0x0

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    goto :goto_1e93

    :cond_1e92
    const/4 v0, 0x0

    :goto_1e93
    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-nez v1, :cond_1e9a

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->needDraw:Z

    return-void

    :cond_1e9a
    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inTimer:Z

    if-nez v0, :cond_1eac

    const/16 v0, 0x38

    if-ne v1, v0, :cond_1eac

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    move/from16 v1, v41

    if-eq v1, v0, :cond_1eac

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dxOriginal:D

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    :cond_1eac
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-eqz v0, :cond_1ebf

    iget-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damageTime:D

    sub-double v0, v0, p1

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damageTime:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1ebf

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    :cond_1ebf
    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->sizeInZone:Z

    if-nez v0, :cond_2014

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inJump:Z

    if-eqz v0, :cond_1f4f

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    if-eqz v0, :cond_1f4f

    iget-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inDamage:Z

    if-nez v0, :cond_1f4f

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->dy:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1f4f

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Player;->width2:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    sub-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1f4f

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    sub-double v6, v2, v4

    iget-wide v11, v9, Lcom/cmyksoft/retroworld/Player;->dy:D

    sub-double/2addr v6, v11

    cmpl-double v8, v0, v6

    if-ltz v8, :cond_1f4f

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->oldY:D

    sub-double v6, v2, v4

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_1f4f

    const-wide/high16 v0, -0x3fe4000000000000L  # -7.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->dy:D

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->smallJump:Z

    sub-double/2addr v2, v4

    const-wide v4, 0x3f847ae147ae147bL  # 0.01

    sub-double/2addr v2, v4

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget v1, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f37

    const-wide/high16 v3, 0x404e000000000000L  # 60.0

    iput-wide v3, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    iput v2, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const-wide/high16 v1, 0x4026000000000000L  # 11.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    const-wide/high16 v1, 0x4035000000000000L  # 21.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    const/4 v0, 0x3

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndShellDown:I

    :goto_1f33
    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    goto :goto_1f4d

    :cond_1f37
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpg-double v4, v0, v2

    const/4 v0, 0x1

    if-gez v4, :cond_1f42

    const/4 v13, 0x1

    goto :goto_1f43

    :cond_1f42
    const/4 v13, 0x0

    :goto_1f43
    invoke-virtual {v10, v0, v13}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndEnemyDead:I

    goto :goto_1f33

    :goto_1f4d
    const/4 v13, 0x1

    goto :goto_1f50

    :cond_1f4f
    const/4 v13, 0x0

    :goto_1f50
    if-nez v13, :cond_2014

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inDamage:Z

    if-nez v0, :cond_2014

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inTeleport:Z

    if-nez v0, :cond_2014

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v2, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, v9, Lcom/cmyksoft/retroworld/Player;->width2:D

    iget-wide v4, v10, Lcom/cmyksoft/retroworld/Enemy;->width2:D

    add-double v6, v2, v4

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_2014

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->y:D

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->y:D

    iget-wide v11, v10, Lcom/cmyksoft/retroworld/Enemy;->height:D

    sub-double v11, v6, v11

    cmpl-double v8, v0, v11

    if-ltz v8, :cond_2014

    iget-wide v11, v9, Lcom/cmyksoft/retroworld/Player;->height:D

    sub-double/2addr v0, v11

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_2014

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->inStar:Z

    if-eqz v0, :cond_1f8c

    iget-boolean v0, v9, Lcom/cmyksoft/retroworld/Player;->directionIsRight:Z

    const/4 v1, 0x1

    invoke-virtual {v10, v1, v0, v1}, Lcom/cmyksoft/retroworld/Enemy;->damage(ZZI)V

    goto/16 :goto_2014

    :cond_1f8c
    const/4 v1, 0x1

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-ne v0, v1, :cond_1fdb

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/4 v6, 0x2

    if-eq v0, v1, :cond_1fa0

    if-ne v0, v6, :cond_1fdb

    iget-wide v7, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v11, 0x4010000000000000L  # 4.0

    cmpg-double v0, v7, v11

    if-gez v0, :cond_1fdb

    :cond_1fa0
    iput v6, v10, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iput-boolean v1, v10, Lcom/cmyksoft/retroworld/Enemy;->inMove:Z

    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->x:D

    iget-wide v6, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    cmpg-double v8, v0, v6

    if-gez v8, :cond_1fae

    const/4 v13, 0x1

    goto :goto_1faf

    :cond_1fae
    const/4 v13, 0x0

    :goto_1faf
    iput-boolean v13, v10, Lcom/cmyksoft/retroworld/Enemy;->directionIsRight:Z

    if-eqz v13, :cond_1fb5

    const/4 v8, 0x1

    goto :goto_1fb6

    :cond_1fb5
    const/4 v8, -0x1

    :goto_1fb6
    int-to-double v6, v8

    add-double/2addr v2, v4

    const-wide v4, 0x3f847ae147ae147bL  # 0.01

    add-double/2addr v2, v4

    mul-double v6, v6, v2

    add-double/2addr v0, v6

    iput-wide v0, v10, Lcom/cmyksoft/retroworld/Enemy;->x:D

    const/4 v0, 0x1

    iput v0, v10, Lcom/cmyksoft/retroworld/Enemy;->moveKind:I

    const-wide/high16 v1, 0x4024000000000000L  # 10.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->dx:D

    const-wide/high16 v1, 0x4034000000000000L  # 20.0

    iput-wide v1, v10, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput-boolean v0, v10, Lcom/cmyksoft/retroworld/Enemy;->isHeadShotEnabled:Z

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndShellPush:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    const/4 v13, 0x0

    goto :goto_1fdd

    :cond_1fdb
    const/4 v0, 0x1

    const/4 v13, 0x1

    :goto_1fdd
    if-eqz v13, :cond_2014

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-boolean v0, v0, Lcom/cmyksoft/retroworld/Game;->isGameOver:Z

    if-nez v0, :cond_2014

    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_200f

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0}, Lcom/cmyksoft/retroworld/Enemy;->dead(ZZ)V

    iget-byte v0, v9, Lcom/cmyksoft/retroworld/Player;->kind:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1ff7

    invoke-virtual {v9, v1}, Lcom/cmyksoft/retroworld/Player;->setSize(B)V

    :cond_1ff7
    iget-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->dy:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2001

    iput-wide v2, v9, Lcom/cmyksoft/retroworld/Player;->dy:D

    :cond_2001
    const-wide/high16 v0, 0x405e000000000000L  # 120.0

    iput-wide v0, v9, Lcom/cmyksoft/retroworld/Player;->transformationTime:D

    iget-object v0, v10, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v0, v0, Lcom/cmyksoft/retroworld/Game;->sound:Lcom/cmyksoft/retroworld/Sound;

    iget v1, v0, Lcom/cmyksoft/retroworld/Sound;->sndCaterpillarOn:I

    invoke-virtual {v0, v1}, Lcom/cmyksoft/retroworld/Sound;->play(I)V

    goto :goto_2014

    :cond_200f
    iget v0, v10, Lcom/cmyksoft/retroworld/Enemy;->damage:I

    invoke-virtual {v9, v0}, Lcom/cmyksoft/retroworld/Player;->damage(I)V

    :cond_2014
    :goto_2014
    return-void
.end method

.method public prepareSecond()V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v2, 0xf

    const/16 v3, 0x14

    const/16 v4, 0x19

    const/16 v5, 0x64

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4040000000000000L  # 32.0

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    const/16 v13, 0x18

    if-ne v1, v2, :cond_74

    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    iget-wide v14, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    add-double/2addr v14, v7

    const-wide/high16 v16, 0x4030000000000000L  # 16.0

    sub-double v14, v14, v16

    div-double/2addr v14, v9

    sub-double/2addr v14, v11

    double-to-int v2, v14

    mul-int v1, v1, v2

    iget-wide v14, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double/2addr v14, v7

    add-double/2addr v14, v11

    div-double/2addr v14, v9

    double-to-int v2, v14

    add-int/2addr v1, v2

    :goto_2e
    if-ltz v1, :cond_41

    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v7, v2, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v8, v2, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v8, v8, v1

    aget-byte v7, v7, v8

    if-ge v7, v5, :cond_3d

    goto :goto_41

    :cond_3d
    iget v2, v2, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    sub-int/2addr v1, v2

    goto :goto_2e

    :cond_41
    :goto_41
    if-gez v1, :cond_47

    :goto_43
    iput v6, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    goto/16 :goto_1f6

    :cond_47
    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v5, v2, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x20

    iput v5, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-ltz v1, :cond_6f

    iget-object v7, v2, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v2, v2, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v1, v2, v1

    aget-byte v1, v7, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6b

    if-eq v1, v3, :cond_6b

    const/16 v2, 0x15

    if-eq v1, v2, :cond_6b

    if-eq v1, v13, :cond_6b

    if-ne v1, v4, :cond_6f

    :cond_6b
    add-int/lit8 v5, v5, -0x10

    iput v5, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    :cond_6f
    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    if-gez v1, :cond_1f6

    goto :goto_43

    :cond_74
    if-lt v1, v13, :cond_1f6

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1f6

    iget-object v14, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v14, v14, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    add-double/2addr v6, v11

    div-double/2addr v6, v9

    sub-double/2addr v6, v11

    double-to-int v6, v6

    mul-int v14, v14, v6

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    add-double/2addr v6, v11

    div-double/2addr v6, v9

    double-to-int v6, v6

    add-int/2addr v14, v6

    const-wide v6, -0x3f70c80000000000L  # -999.0

    iput-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    iput-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    const/16 v6, 0x1a

    const/16 v7, 0x5a

    const/4 v8, 0x5

    const/16 v9, 0x1c

    const/16 v10, 0x12

    if-eq v1, v13, :cond_ec

    if-eq v1, v6, :cond_ec

    if-ne v1, v9, :cond_a5

    goto :goto_ec

    :cond_a5
    move v1, v14

    :goto_a6
    iget-object v5, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v11, v5, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int v12, v1, v11

    div-int v15, v14, v11

    if-ne v12, v15, :cond_be

    iget-object v12, v5, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v5, v5, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v5, v5, v1

    aget-byte v5, v12, v5

    if-ge v5, v7, :cond_bb

    goto :goto_be

    :cond_bb
    add-int/lit8 v1, v1, -0x1

    goto :goto_a6

    :cond_be
    :goto_be
    rem-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v10

    iput v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    move v1, v14

    :goto_c7
    iget-object v5, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v11, v5, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int v12, v1, v11

    div-int v15, v14, v11

    if-ne v12, v15, :cond_df

    iget-object v12, v5, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v5, v5, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v5, v5, v1

    aget-byte v5, v12, v5

    if-ge v5, v7, :cond_dc

    goto :goto_df

    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    :cond_df
    :goto_df
    rem-int v5, v1, v11

    mul-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x10

    sub-int/2addr v5, v10

    iput v5, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    const/16 v18, 0x0

    goto/16 :goto_161

    :cond_ec
    :goto_ec
    move v1, v14

    :goto_ed
    const/4 v12, -0x6

    if-ltz v1, :cond_10d

    iget-object v15, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget-object v10, v15, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v11, v15, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v11, v11, v1

    aget-byte v10, v10, v11

    if-ge v10, v5, :cond_107

    if-le v10, v8, :cond_10d

    if-eq v10, v4, :cond_105

    if-ne v10, v13, :cond_103

    goto :goto_105

    :cond_103
    const/4 v10, 0x2

    goto :goto_10f

    :cond_105
    :goto_105
    const/4 v10, -0x6

    goto :goto_10f

    :cond_107
    iget v10, v15, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    sub-int/2addr v1, v10

    const/16 v10, 0x12

    goto :goto_ed

    :cond_10d
    const/16 v10, 0x12

    :goto_10f
    iget-object v11, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v11, v11, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v10

    iput v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    const/16 v18, 0x0

    :goto_11d
    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v10, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int v11, v14, v10

    iget v15, v1, Lcom/cmyksoft/retroworld/Game;->fieldHeight:I

    if-ge v11, v15, :cond_154

    iget-object v11, v1, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v15, v1, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v15, v15, v14

    aget-byte v11, v11, v15

    if-ge v11, v5, :cond_142

    if-le v11, v8, :cond_154

    const/16 v1, 0xc

    if-eq v11, v1, :cond_13f

    const/16 v1, 0xd

    if-ne v11, v1, :cond_13c

    goto :goto_13f

    :cond_13c
    const/16 v19, 0x2

    goto :goto_156

    :cond_13f
    :goto_13f
    const/16 v19, -0x6

    goto :goto_156

    :cond_142
    if-nez v18, :cond_14e

    rem-int v11, v14, v10

    div-int v10, v14, v10

    invoke-virtual {v1, v11, v10}, Lcom/cmyksoft/retroworld/Game;->checkWaterGrid(II)Z

    move-result v1

    move/from16 v18, v1

    :cond_14e
    iget-object v1, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v1, v1, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    add-int/2addr v14, v1

    goto :goto_11d

    :cond_154
    const/16 v19, 0x12

    :goto_156
    div-int v1, v14, v10

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x10

    sub-int v1, v1, v19

    iput v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    move v1, v14

    :goto_161
    iget v5, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    if-eq v5, v13, :cond_181

    if-ne v5, v4, :cond_168

    goto :goto_181

    :cond_168
    if-eq v5, v6, :cond_17a

    const/16 v4, 0x1b

    if-ne v5, v4, :cond_16f

    goto :goto_17a

    :cond_16f
    if-eq v5, v9, :cond_173

    if-ne v5, v2, :cond_189

    :cond_173
    const/16 v2, 0x23

    iput v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    goto :goto_189

    :cond_17a
    :goto_17a
    const/16 v2, 0x32

    iput v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    iput v9, v0, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    goto :goto_189

    :cond_181
    :goto_181
    const/16 v2, 0x50

    iput v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param4:I

    const/16 v2, 0x28

    iput v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param3:I

    :cond_189
    :goto_189
    iget-object v2, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v2, v2, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    rem-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x20

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    div-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x20

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    iput-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    if-eqz v18, :cond_1f2

    if-eq v5, v13, :cond_1a7

    if-eq v5, v6, :cond_1a7

    if-ne v5, v9, :cond_1f2

    :cond_1a7
    sub-int/2addr v1, v2

    move v2, v1

    :goto_1a9
    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v4, v3, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int v5, v2, v4

    div-int v6, v1, v4

    if-ne v5, v6, :cond_1c3

    iget-object v5, v3, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v3, v3, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v3, v3, v2

    aget-byte v3, v5, v3

    if-le v3, v8, :cond_1c3

    if-ne v3, v7, :cond_1c0

    goto :goto_1c3

    :cond_1c0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a9

    :cond_1c3
    :goto_1c3
    rem-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x10

    int-to-double v2, v2

    iput-wide v2, v0, Lcom/cmyksoft/retroworld/Enemy;->float1:D

    move v2, v1

    :goto_1ce
    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v4, v3, Lcom/cmyksoft/retroworld/Game;->fieldWidth:I

    div-int v5, v2, v4

    div-int v6, v1, v4

    if-ne v5, v6, :cond_1e8

    iget-object v5, v3, Lcom/cmyksoft/retroworld/Game;->groupField:[B

    iget-object v3, v3, Lcom/cmyksoft/retroworld/Game;->field:[C

    aget-char v3, v3, v2

    aget-byte v3, v5, v3

    if-le v3, v8, :cond_1e8

    if-ne v3, v7, :cond_1e5

    goto :goto_1e8

    :cond_1e5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ce

    :cond_1e8
    :goto_1e8
    rem-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x10

    int-to-double v1, v2

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float2:D

    :cond_1f2
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/cmyksoft/retroworld/Enemy;->float3:D

    :cond_1f6
    :goto_1f6
    return-void
.end method

.method public secondDraw(Lcom/cmyksoft/retroworld/Graphics;)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->kind:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_cd

    const/16 v3, 0x1d

    if-gt v1, v3, :cond_cd

    iget-wide v3, v0, Lcom/cmyksoft/retroworld/Enemy;->x:D

    double-to-int v3, v3

    iget-object v4, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v5, v4, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int/2addr v3, v5

    iget-wide v6, v0, Lcom/cmyksoft/retroworld/Enemy;->y:D

    double-to-int v6, v6

    iget v7, v4, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int/2addr v6, v7

    sget-object v8, Lcom/cmyksoft/retroworld/Enemy;->FRAME_KIND_ELECTRO:[B

    iget-wide v9, v4, Lcom/cmyksoft/retroworld/Game;->time:D

    const-wide/high16 v11, 0x4008000000000000L  # 3.0

    div-double/2addr v9, v11

    double-to-int v4, v9

    array-length v9, v8

    rem-int/2addr v4, v9

    aget-byte v4, v8, v4

    const/16 v8, 0x1a

    if-lez v4, :cond_33

    if-lt v1, v8, :cond_33

    add-int/lit8 v9, v1, -0x18

    div-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    :cond_33
    mul-int/lit8 v4, v4, 0x6

    if-eq v1, v2, :cond_8d

    if-eq v1, v8, :cond_8d

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_3e

    goto :goto_8d

    :cond_3e
    const/16 v9, 0x19

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int/2addr v1, v5

    add-int/lit8 v10, v1, 0x1

    add-int/lit8 v1, v6, 0xc

    add-int/lit16 v2, v4, 0x28a

    const/16 v13, 0x5e

    const/4 v14, 0x6

    const/4 v15, 0x3

    const/16 v16, 0x4

    move-object/from16 v8, p1

    move v11, v1

    move v12, v2

    invoke-virtual/range {v8 .. v16}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    const/16 v12, 0x19

    iget v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v4, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v4, v4, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int/2addr v3, v4

    add-int/lit8 v13, v3, 0x1

    add-int/lit8 v3, v6, -0xd

    const/16 v16, 0x5e

    const/16 v17, 0x6

    const/16 v18, 0x3

    const/16 v19, 0x4

    move-object/from16 v11, p1

    move v14, v3

    move v15, v2

    invoke-virtual/range {v11 .. v19}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v4, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget-object v5, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v5, v5, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int/2addr v4, v5

    add-int/lit8 v13, v4, -0x1

    move v14, v1

    invoke-virtual/range {v11 .. v19}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget-object v4, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v4, v4, Lcom/cmyksoft/retroworld/Game;->scrollX:I

    sub-int/2addr v1, v4

    add-int/lit8 v13, v1, -0x1

    move v14, v3

    invoke-virtual/range {v11 .. v19}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    goto :goto_cd

    :cond_8d
    :goto_8d
    const/16 v10, 0x19

    add-int/lit8 v1, v3, 0xc

    iget v2, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    sub-int/2addr v2, v7

    add-int/lit8 v12, v2, 0x1

    const/16 v13, 0x39e

    const/4 v15, 0x3

    const/16 v16, 0x6

    const/16 v17, 0x4

    move-object/from16 v9, p1

    move v11, v1

    move v14, v4

    invoke-virtual/range {v9 .. v17}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    add-int/lit8 v2, v3, -0xd

    iget v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param1:I

    iget-object v5, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v5, v5, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int/2addr v3, v5

    add-int/lit8 v12, v3, 0x1

    move v11, v2

    invoke-virtual/range {v9 .. v17}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v3, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget-object v5, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v5, v5, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int/2addr v3, v5

    add-int/lit8 v12, v3, -0x1

    move v11, v1

    invoke-virtual/range {v9 .. v17}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    iget v1, v0, Lcom/cmyksoft/retroworld/Enemy;->param2:I

    iget-object v3, v0, Lcom/cmyksoft/retroworld/Enemy;->game:Lcom/cmyksoft/retroworld/Game;

    iget v3, v3, Lcom/cmyksoft/retroworld/Game;->scrollY:I

    sub-int/2addr v1, v3

    add-int/lit8 v12, v1, -0x1

    move v11, v2

    invoke-virtual/range {v9 .. v17}, Lcom/cmyksoft/retroworld/Graphics;->drawBitmap(IIIIIIII)V

    :cond_cd
    :goto_cd
    return-void
.end method
